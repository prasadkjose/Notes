<center><i>Ready, Aim, Kill. The Linux hitman that decides what to kill. But is it a dud?</i> </center>

---

Here is another, more accurate analogy. Linux kernel's OOM killer is like a firefighter who shows up after the house is already ashes. I am pretty sure it kills something, but your screen is already grey, system is frozen, and those Ctrl+ALT+Del panic smashing is fruitless. 

---
 How does the linux kernel choose it's target to kill? 
 Let me quote the original kernel method doc for `out_of_memory()`
 
 > [!cite] [Kernal Doc](https://github.com/torvalds/linux/blob/ec0b62ccc986c06552c57f54116171cfd186ef92/mm/oom_kill.c#L1118)
 >> If we run out of memory, we have the choice between either killing a random task (bad), letting the system crash (worse) OR try to be smart about which process to kill. Note that we don't have to be perfect here, we just have to be good.

It chooses a method based on it's badness, a kind of naughty list. A process is naughty if it uses a lot of memory but haven't been running long. It's important to note that it's not quite easy to determine which process to kill. It's partial towards root process are they are assumed to be well behaved. If processes have direct access to any hardware, they are pushed further down the naughty list. 

So why does Linux hang indefinitely when my system runs out of memory? 
While in theory, the OOM killer should free up space and fix this. But why doesn't this happen? I became interested in this and set out to find why Linux's default OOM killer doesn't work as expected. 

The big why? It turns out that the OOM killer is called by the kernel as the absolute last resort. It provides no guarantee as to the unpredictable state of the system. In reality, the system is not really locked up, it will eventually process the running tasks or the OOM killer gets sufficient time to kill enough processes. 

So here's a question I always have when my machine just freezes. Why didn't the mighty hit-man take out a process and unfreeze my machine? It turns out the native OOM killer tries it's best to stay away from any processes in the userspace. Do I have 20 chrome tabs open, devouring my RAM? Yes. Will the OOM killer do anything about it? NO. 

---

So here is where the question gets more complicated. On my machine, I expect the OOM killer to terminate a couple of older chrome tabs. What about a server? Do you really want to kill your DB and hope that those beautiful schemas are unaffected? What about the combustion control system on the International Space Station? What process do we kill there? The last one might have been an hyperbole but the complexity of the issue remain. 

I know some of you are thinking, what about memory swaps? It doesn't really help by allocating half of your SSD as swap memory and wait for the processes to slowly execute.
What I needed for specifically for my use case was an OOM killer that targets user processes, like those memory hungry chrome tabs.  If you have gotten this far, I would assume you have also been in this situation. So without further ado, let me introduce you to [Earlyoom](https://github.com/rfjakob/earlyoom), a simple and solid tool that's written in pure C with absolutely n dependencies. You can read about it in detail on their [Github](https://github.com/rfjakob/earlyoom). 

This is how it works. Earlyoom monitors available memory(both primary and swap) and when user defined thresholds(default is 10%) are met, it kills the process consuming the most memory. 
Earlyoom came out as a winner to me among alternatives like Meta's [OOMD](https://github.com/facebookincubator/oomd) for it's simplicity, easy usage and very clear documentation. Did I forget to mention that it checks the memory 10 times per second? It leaves no chances for a frozen system. Guess how much memory it uses for all this? 2MiB total and almost 90% of it is native c libraries that's shared with other processes. 

---

1. Linux's kernel is very robust and plans to act when there is a serious issue. sometimes this might take some time or won't yield the results you expect. 
2. The native OOM killer is built to save your machine or server from many general issues like memory leaks and total collapse.  
3. This is where Earlyoom is effective and gets to work before the kernel has to. It's fast, small and efficient and get the job done. 
4. You can run it as a `systemd` service on machine startup and access all it's logs with `journalctl`
5. You can set up desktop notifications in GUI to know which process was terminated.

---
## TL;DR:

1. Don't worry if your personal computer has only 4 or 8 GB ram. Use Earlyoom to prevent your system being slow or frozen. 
2. The best solution is the one that acts before you even notice the issue. 

---
## Commands to Remember

```shell
# Installation - 
sudo apt install earlyoom

# Make sure it's running as a systemd service
sudo systemctl status earlyoom

# If it's not, start it as a systemd service
sudo systemctl enable --now earlyoom

# Check logs
sudo journalctl -u earlyoom | grep <process name/pid or SIGTERM to see terminated process>

# Change threshold from default 10% to 20%, 
# edit /etc/default/earlyoom config file and set line to
EARLYOOM_ARGS="-m 20"

# Set a preferred process to kill over others. 
#EARLYOOM_ARGS="-m 20 --prefer '(^|/)(java|chromium)$'"

# Avoid any critical process like db to be killed by earlyoom
EARLYOOM_ARGS="-m 20--avoid '(^|/)(sql)$' --prefer '(^|/)(java|chromium)$'"
```
---
## Nerd Score

1. **Coolness:** 🔥🔥🔥🔥
2. **Effort:** 🔨

---
## Comment Prompt:

1. Do you prefer the native linux kernel or a different OOM Killer? 
2. Do you have a different strategy to prevent your system from freezing? 

---

## Sources:

1. https://github.com/rfjakob/earlyoom
2. https://www.kernel.org/doc/gorman/html/understand/understand016.html
3. https://chrisdown.name/2018/01/02/in-defence-of-swap.html
1. Hook
	1. Ready, Aim, Kill. The Linux hitman that decides what to kill. 
 
2. Context:
	1. 
3. Core
	1. How does the linux kernel choose it's target? Let me quote the original kernel method doc for out_of_memory():
		>1. If we run out of memory, we have the choice between either
		  killing a random task (bad), letting the system crash (worse)
		 OR try to be smart about which process to kill. Note that we
		 don't have to be perfect here, we just have to be good. - https://github.com/torvalds/linux/blob/ec0b62ccc986c06552c57f54116171cfd186ef92/mm/oom_kill.c#L1118
		1. It chooses a method based on it's badness, a kind of naughty list. A process is naughty if it uses a lot of memory but haven't been running long. It's important to note that it's not quite easy to determine which process to kill. It's partial towards root process are they are assumed to be well behaved. If processes have direct access to any hardware, they are pushed further down the naughty list. 
		2. So why does Linux hang indefinitely when my system runs out of memory. While in theory, the OOM killer should free up space and fix this. But why doesn't this happen? I became interested in this and set out to find why Linux's default OOM killer doesn't work as expected. 
		3. The big why? It turns out that the OOM killer is called by the kernel as the absolute last resort. It provides no guarantee as to the unpredictable state of the system. In reality, the system is not really locked up, it will eventually process the running tasks or the OOM killer gets sufficient time to kill enough processes. 
		4. So how do I
4. Takeaway
5. TL;DR
6. Commands to Remember
7. Nerd Score
	1. **Coolness:** 🔥🔥🔥  
	2. **Effort:** 🪶
8. Comment Prompt


Sources: 
1. https://chrisdown.name/2018/01/02/in-defence-of-swap.html
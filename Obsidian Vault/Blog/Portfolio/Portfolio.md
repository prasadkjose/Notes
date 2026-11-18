1. Title
	1. **Why I Turned My Portfolio Into a Linux Operating System**
2. Hook
	1. As someone who loves math, I am a big fan of formulas. I appreciate their structure, universality and idempotency. As developers and Engineers, we always follow the same formula for our portfolio websites - a hero section, project cards, contact form and repeat. Let me stress here that there is nothing wrong with this tried and tested formula but I had a couple of months of unemployment, a very bored brain and a deep dislike for LeetCode style questions. So, I turned my portfolio into an interactive Linux desktop experience, complete with terminal style commands, distro inspired themes, draggable windows and a project that showcases both my technical skills and kooky personality.

3. Context
	1. As an engineer, I wanted to work on something which is technically challenging, use my 5 years of software engineering expertise and do more than list my education. I wanted it to *be* a project. 
	2. I have been using Linux since as long as I remember. I can go on about the perks of Linux for a long time especially now that the closed source contributes will charge you monthly for the privilege of using their services. But this is not a blog about Linux. I want you to understand my obsession. I want to create a portfolio that blends software engineering and my favorite OS. The goal was simple: build something that mimics the best software ever built, runs in the browser, use the patterns I have learnt the last 5 years. So this project became a chance to combine React, TS, StyledComponents, serverless functions, etc into one experience. 
	3. I believe a portfolio should say something about the person behind it. I wanted mine to reflect my love for Linux and some level of technical depth. So I built one that feels less like a webpage and more like a machine you can explore and interact. 
4. Core
	1. Once I committed to the idea of creating a Linux-themed portfolio, the end goal became clear to me. It had to be interactive, playful, and still practical enough for recruiters who may not want to spend 20 minutes learning Linux or terminal commands just to find my resume. So the project became a balancing act between creativity and usability. I’ll split this section into two parts. First, I’ll cover my thought process behind the design flow and UX decisions. For you programming nerds, I’ll explain how I approached the technical decisions in the second part.
	
	2. **Designing the Experience**
		1. I wanted a desktop-like experience with multiple ways to explore. I wanted a natural flow for different users to interact with the app. Users can click around visually, open windows, navigate like a desktop user, or go full power-user mode through the terminal. Basically:
			1. Casual visitor: clicks icons
				Developer visitor: opens terminal
				Recruiter: views resume right in app with just one click. 
				Curious person: gets lost for 45 minutes
		2. One of the most fun parts was developing different Linux-themed UX experiences. I got to play around with colors, feel, and personality. Each distro has its own identity, visual language, and vibe. It’s basically theme switching... but with stronger opinions.
		3. To make the experience feel like a real GUI operating system, the app needed stateful, persistent, draggable, and interactive windows for different apps. The end goal was to open all of my projects like applications inside the OS. That small detail changes the experience dramatically. It feels less like reading content and more like using software.
		4. Now here’s the catch: fun interfaces can become slow interfaces very quickly. So I paid close attention to keeping the experience smooth, responsive, and usable across screen sizes. Every design decision had to be followed by deliberate performance considerations. Because if your portfolio app takes 9 seconds to load, users may assume your code does too. Unfair? Maybe. Realistic? Absolutely.
	3. **Technical Stack Highlights and decisions**
		1. I would really like to list the tech stack used here and throw in some fancy-sounding technical terms. But I am going to do something different. I will walk though my failures, how I had to fix them, and how I ended up with a half-decent facsimile of the end product that I envisioned.   
		2. I started with a typical question that plagues every new and experienced engineer starting a new project. Do I start from scratch? Will I be lesser of an engineer if I get some help? Luckily for me, from working at one of the biggest corporations on the planet, I learned that many products are built on top of others—open source or otherwise. Long story short, I decided to fork an existing open-source project and re-engineer the inner mechanics according to my own patterns. After a long search, I found the wonderful [Kali-Linux-Hacker-Portfolio](https://github.com/jihedkdiss/Kali-Linux-Hacker-Portfolio). It fit my needs of a minimal, performant framework to serve as a foundation for my portfolio. Full credits to the developer for their excellent work and for making it open source.
		3. Next, I had to decide which features to work on and how to improve it. I looked around the web for ideas, brainstormed with ChatGPT, and explored my favorite distro for inspiration. I ended up with 50+ overwhelming ideas, often conflicting with each other. Each one felt more important than the last.
		4. For a moment, I forgot that I had merged thousands of features and fixes in my career, and suddenly I was back to feeling like I was on my first project ever. That’s when reality slapped me with Agile. Why can’t I be agile? I can have Scrum with myself. I love talking to myself.
		5. I had to start with one issue. I meant that literally. I created my [first GitHub Issue](https://github.com/prasadkjose/Linux-Portfolio/issues/1) for my portfolio. It was simply to refactor the main App.tsx file, to follow the basic React component structure. What's the famous saying? A tiny drop of water... You know it. Right? That helped me focus and get started on the right track. Every other idea took a back seat. A clear project lifecycle and methodology started forming in my head.
		6. That's my segue into another issue I often encounter. How do I consistently keep myself motivated to contribute and not let the project rot in my github. The obvious answer seems to be code quality, consistency, and maintainability. There are an overwhelming number of tools for each stage of software [SDLC](https://www.geeksforgeeks.org/software-engineering/software-development-life-cycle-sdlc/), so I'll make this part tech stack agnostic. I decided to start with the basics:
			1. Linter
			2. Code formatter
			3. Hosting and CI/CD
			4. Version control hooks. 
			5. Documentation tool and structure. 
			I'll list out all specific tools at the end of this blog post. 
			After a month, I became a one-person Agile team. I automated most of the maintenance and deployment noise, so now I can focus mainly on coding and QA.
		7. I don't want to dissuade you from setting up a maintainable, scalable project, especially if you are a newbie. My intention was to walk you through the real struggles of an experienced engineer, so you know you’re not alone. Sometimes, working in a team can make you oblivious to the other parts of building software. That's my story of how I set out to build a portfolio website and how I ended up with a lifelong project I can be excited to work on everyday. 
	
3. Takeaway
	You do not need to build everything from scratch. Using open source foundations wisely is smart engineering, not cheating. Too many ideas can stall progress. Turning ideas into clear GitHub issues creates momentum. Good engineering habits matter even for solo projects: linting, formatting, CI/CD, hooks, and documentation save time later. Even experienced engineers struggle with scope, decision fatigue, and consistency. That is normal. Don't forget. Something is better than nothing. 

4. TL;DR
	1. Motivation often comes from structure. Consistency comes from struture. Systems beat moods.
	2. Side projects can teach ownership skills that team environments sometimes hide.
	3. A personal project can become more than a portfolio, it can become proof of how you think and build.
5. Technology Stack- 
	1. Core Frontend Stack
		1. React – component-based frontend framework
		2. TypeScript – type safety and cleaner scaling
		3. Vite – super fast dev server and bundler
		4. React Motion - for that smooth OS feel. 
	2. Backend Stack and services
		1. NodeJS - runtime environment
		2. Supabase - cloud hosted, PostgreSQL based database
	3. Styling / UI
		1. Styled Components – rapid UI styling
	4. Code Quality / Developer Experience
		1. ESLint – code quality enforcement
		2. Prettier – consistent formatting
		3. Husky – pre-commit automation
		4. lint-staged – cleaner commits
	5. Deployment / Hosting
		1. Netlify or Vercel (depending on your current deploy target)
	6. Version Control
		1. GitHub
		2. GitHub Issues for project management
		3. Git workflow / branching strategy			
6. Nerd Score
	1. **Coolness:** 🔥🔥🔥🔥 🔥
	2. **Effort:** 🪶
7. Comment Prompt
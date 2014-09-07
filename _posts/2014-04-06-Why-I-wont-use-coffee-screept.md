---
layout: post
tagline: ""
description: ""
category: Life
tags: [life, idea]
sharing: true
comments: true
robots: index,follow
alias: [/lessons/2012/1/20/jekyll-introduction/index.html]
published: true
---

1. It is going to be replaced with ES6 in the near 2 years. That will cause problems for CS due to incompatibility. I better learn ES6 or ES6-compatible dialect instead of weird stage represented by coffee.

2. Not everyone understand CS syntax, but anyone understand C-like JS syntax. JS is easy and obvious. If someone wants to learn CS, he has to learn JS at first, he can’t just learn coffe straight away. Besides, there’s a wide support and understanding of JS all over the web.

3. I often create project sketches like html page with some JS. With coffee I have to always think of project environment, builder, watcher and other redundant stuff. That’s exhausting.

4. There’re plenty of more developed scripts, surpassing coffe in usability. The main two are *livescript* and *icedscript*. Unfortunately, practice showed that they cause more trouble than solution. The most dangerous is that now you don’t understand which is correct way of implementing features you need and how to organize your code, because there’re no more best-practices, now you think a lot about conventions and doubt about quality and best way of implementing stuff.

5. With any over-script you can’t control your resulting code which will be implemented in your browser. It’d be acceptable if you don’t care of it’s size, but if size matters, you are to control your result.

6. It is painful in debugging. There are watchers nowadays with sourcemaps, but you can’t still trust your precompiled result, you have to check it, at least sometimes. Besides, with a complicated building process you can’t use sourcemaps.

7. What coffee script gives to a programmer? Useful class declarations and shorter notations (30% shorter than JS). But what if that isn’t a bottleneck for me, what if I perfectly know already how to implement classes in JS, what if ampunt of typing isn’t an issue for me? In fact, concepts matter, not the language you choose. Then coffee script gives an increased chance of an error (overcode/too similar notations(fn/property)), inconsistent syntax, questions, learning curve, reduction in support of your code.
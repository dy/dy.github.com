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

## What’s the best practice organising multi-emvironmental JS plugin?

I don’t like libraries having own source for every target environment.
So the library should be built in a multienvironmental way.

* Env-specific packages like bower.js, component.js have to be built based on package.json

Plugin itself have to be build with no dependencies, like sticky.
Environment has to be granted by polyfills and utils, able to recognize env utils.
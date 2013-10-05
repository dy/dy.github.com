---
layout: post
description: ""
category: Workflow
tags: [Jekyll, Workflow]
sharing: true
comments: true
robots: index,follow
published: true
---

It’s when you can see a programmatic product development from the other context.

For example. Sliding areas plugin.
I need to decide, what’s the best way of restricting picker movement.
Frominside the plugin by it’s own I can’t say exactly, cause I have no any scenarios, I just know that it must drag.
So, I imagine color-picker use of sliding areas. I need some area to mark that it should be draggable, and value should be passed by my options. Picker should never go out the border, and always *should reflect model value*.
That way, I’ve found out the 2 good requirements to the plugin.
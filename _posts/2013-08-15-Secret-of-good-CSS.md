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

1. Avoid setting/getting element style. It’s very resource-requiring. Especially in cycles. Calc them at once.

2. Use one-level css notation. It’s not that convenient as LESS, but faster.

3. Use mutations observer to catch the whole bunch of elements added

4. Avoid reflows. Use changing the whole style instead of per-property.

p.s. did you know that you can use getters/setters for the dom objects? no?
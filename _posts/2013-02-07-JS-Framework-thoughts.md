---
layout: post
title: JS Framework thoughts
published: true
category: blog
tags: [programming, life]
language: english
---
# JS Framework points
Current state of framework (jquery ui) isn’t satisfying for app development needs: it’s too slow and intricate, requires labor.

## Main difficulties

* You add event handler (whole string with function binding), add action to this handler, in action add call to API, API changes model, besides, model events are important too, then change of model calls render or somehow reacts on DOM view.
* Binding of data-reactions is stupid and difficult (data-attributes?) 
* No threads

It’s too long proccess, requires a lot of movements and code to make simple things.

## Possible improvements

* Event dispatching. You just add event-map, like so: 
```
"selector" : "method with meta params like dfd call"
```

* Always need to have template for data. There should be possibility to make easy templating like so:
```
<% include("other_tpl", data) %>
```
Django-like templating looks nice.

* 

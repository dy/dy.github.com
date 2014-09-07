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

#Hi there

Some_MD_to_out, like, content of your post etc. Plaiin MD.
<h2>Ideal keyboard ideas & notes</h2>
<ul class="list-style-dashes">
<li>Thin spaces like of lebedev's <a href="http://www.artlebedev.ru/everything/brain/2012/09/07/">ponos</a> or emulated ctrl+space, ctrl+shift+space</li>
<li>Copy/paste toggle, like <a href="http://www.gadgets-reviews.com/uimg/31/copy-paste-rocker.gif">this</a></li>
<li>Page scrolling handler instead of pageup/pagedown, ~arrows with sliding</li>
<li>Volume, microphone, brightness & other special control buttons like of lenovo's laptops.</li>
<li>A few special programmable buttons with displays like in lebedev's keyboards </li>
<li>Programmable sliders/faders</li>
<li>Winamp player as separate device</li>
<li>Sensor zone with display</li>
<li>Photoshop tools & color picker as separate device</li>
<li>Copyright sign, dashes, quotes & other typographic elements as shortcuts</li>
<li>Customizable scripting</li>
</ul>


<h2>Cowboy static</h2>
<p>
Cowboy has neat apache-like way to return static files. It's handler called cowboy_http_static. It used next way:
<code>
%% Serve files from /var/www/ under http://example.com/static/
%% {[<<"static">>, '...'], cowboy_http_static,
%%     [{directory, "/var/www"}]}
%%
%% %% Serve files from the current working directory under http://example.com/static/
%% {[<<"static">>, '...'], cowboy_http_static,
%%     [{directory, <<"./">>}]}
%%
%% %% Serve files from cowboy/priv/www under http://example.com/
%% {['...'], cowboy_http_static,
%%     [{directory, {priv_dir, cowboy, [<<"www">>]}}]}
</code>
</p>
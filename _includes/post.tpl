<article class="post">
	<h2 class="post-title"><a href="{{ post.url }}">{{ post.title }}</a></h2>
	<div class="post-content">{{ post.content }}</div>
	<nav class="post-tags">
		{% for tag in post.tags %}
		<span href="/tag/{{ tag }}" class="post-tag">{{tag}}</span>
		{% endfor %}
	</nav>
	<time class="post-time">— {{ post.date | date:'%d %B, %Y' }}</span></time>	
</article>
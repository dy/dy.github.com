<article>
	<h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
	<div class="content">{{ post.content }}</div>
	<nav class="tags">
		{% for tag in post.tags %}
		<span href="/tag/{{ tag }}" class="tag">{{tag}}</span>
		{% endfor %}
	</nav>
	<time>— {{ post.date | date:'%d %B, %Y' }}</span></time>	
</article>
<div class="pagination">
	{% if paginator.previous_page %}
		<a href="{% if paginator.previous_page == 1 %}/blog{% else %}/blog/page{{ paginator.previous_page }}{% endif %}/" class="previous">←</a>
	{% else %}
		<span class="previous">←</span>
	{% endif %}
		<span class="page_number ">Page: {{ paginator.page }} of {{ paginator.total_pages }}</span>
	{% if paginator.next_page %}
		<a href="/blog/page{{ paginator.next_page }}/" class="next">→</a>
	{% else %}
		<span class="next">→</span>
	{% endif %}
</div>
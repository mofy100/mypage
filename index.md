---
layout: default
title: ホーム
---

# ようこそ！

これは私のブログです。
最新の記事は以下からどうぞ👇

<!-- This loops through the paginated posts -->
<div class="post-list">
  {% for post in paginator.posts %}
    <div class="post-card">
      <h1><a href="{{ post.url }}">{{ post.title }}</a></h1>
      <p class="author">
        <span class="date">{{ post.date }}</span>
      </p>
      <div class="content">
        {{ post.content }}
      </div>
    </div>
    {% endfor %}
</div>

<!-- Pagination links -->
<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}" class="previous">
      Previous
    </a>
  {% else %}
    <span class="previous">Previous</span>
  {% endif %}
  <span class="page_number ">
    Page: {{ paginator.page }} of {{ paginator.total_pages }}
  </span>
  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}" class="next">Next</a>
  {% else %}
    <span class="next ">Next</span>
  {% endif %}
</div>

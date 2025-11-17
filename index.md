---
layout: default
title: ホーム
pagination:
  enabled: true
---

# ようこそ！

これは私のブログです。
最新の記事は以下からどうぞ👇

<div class="post-list">
  {% for post in paginator.posts %}
    <div class="post-card">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">{{ post.date | date: "%Y-%m-%d" }}</p>
      <!-- postの最初を抜粋 → HTMLタグ除去 → 先頭100文字 -->
      <p class="post-excerpt">{{ post.excerpt | strip_html | truncate: 100 }}</p>
    </div>
  {% endfor %}
</div>

{% if paginator.total_pages > 1 %}
<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path | relative_url }}">&laquo; Prev</a>
  {% else %}
    <span>&laquo; Prev</span>
  {% endif %}

  {% for page in (1..paginator.total_pages) %}
    {% if page == paginator.page %}
      <em>{{ page }}</em>
    {% elsif page == 1 %}
      <a href="{{ '/' | relative_url }}">{{ page }}</a>
    {% else %}
      <a href="{{ site.paginate_path | relative_url | replace: ':num', page }}">{{ page }}</a>
    {% endif %}
  {% endfor %}

  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path | relative_url }}">Next &raquo;</a>
  {% else %}
    <span>Next &raquo;</span>
  {% endif %}
</div>
{% endif %}

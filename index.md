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
  {% for post in paginator.posts limit:5 %}
    <div class="post-card">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">{{ post.date | date: "%Y-%m-%d" }}</p>
      <!-- postの最初を抜粋 → HTMLタグ除去 → 先頭100文字 -->
      <p class="post-excerpt">{{ post.excerpt | strip_html | truncate: 100 }}</p>
    </div>
  {% endfor %}
</div>

<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path | relative_url }}">← 前へ</a>
  {% endif %}

  {% for page in (1..paginator.total_pages) %}
    {% if page == paginator.page %}
      <span class="current">{{ page }}</span>
    {% else %}
      <a href="{{ paginator.paginate_path | replace: ':num', page | relative_url }}">{{ page }}</a>
    {% endif %}
  {% endfor %}

  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path | relative_url }}">次へ →</a>
  {% endif %}
</div>


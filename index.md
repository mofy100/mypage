---
layout: default
title: ホーム
---

# ようこそ！

これは私のブログです。Jekyll + GitHub Pagesで作っています。

最新の記事は以下からどうぞ👇

<div class="post-list">
  {% for post in site.posts limit:5 %}
    <div class="post-card">
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">{{ post.date | date: "%Y-%m-%d" }}</p>
      <p class="post-excerpt">{{ post.excerpt | strip_html | truncate: 100 }}</p>
    </div>
  {% endfor %}
</div>

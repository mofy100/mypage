---
layout: default
title: ホーム
---

# ようこそ！

これは私のブログです。Jekyll + GitHub Pagesで作っています。

最新の記事は以下からどうぞ👇

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> - {{ post.date | date: "%Y-%m-%d" }}
    </li>
  {% endfor %}
</ul>

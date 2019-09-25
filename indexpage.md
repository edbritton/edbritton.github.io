---
layout: default
title: Ed's Blog
---
# {{ page.title }}

{% for post in site.posts %}

- [{{ post.date | date_to_string }}]({{ post.url }}) &middot; {{ post.title }}<br/>{{ post.content }}

{% endfor %}

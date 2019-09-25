---
layout: default
title: Ed's Blog
---
# {{ page.title }}

<dl>
{% for post in site.posts %}
    <dt>{{ post.date | date_to_string }}</dt>
    <dd>[{{ post.title }}]({{ post.url }})</dd>
    <dd>{{ post.content }}</dd>
{% endfor %}
</dl>

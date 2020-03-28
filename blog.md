---
title: Ed’s blog
---
{% for post in site.posts %}
---
## [{{ post.title }}]({{ post.url }})
{% endfor %}

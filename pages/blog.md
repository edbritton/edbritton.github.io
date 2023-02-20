---
title: Ed’s blog
permalink: /blog/index.html
published: true
---

<ol aria-label="Posts listed in reverse order, newest first." reversed>
{% for post in site.posts %}{% unless post.draft %}
<li><a href="{{post.url}}" accesskey="{{post.rindex}}"><time datetime="{{post.date}}">{{post.title}}</time></a></li>
{% endunless %}{% endfor %}
</ol>

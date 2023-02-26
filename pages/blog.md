---
title: Ed’s blog
permalink: /blog/
published: true
---

<ol aria-label="Posts listed in reverse order, newest first." reversed>
{% for post in site.posts %}{% unless post.draft %}
<li><a href="{{post.url}}" accesskey="{{forloop.rindex}}"><time datetime="{{post.date|date:'%Y-%m-%d'}}">{% if post.title %}{{post.title | replace: "Html", "HTML" | replace: "Css", "CSS"}}{% else %}{{post.date|date:"%Y-%m-%d"}}{% endif %}</time></a></li>
{% endunless %}{% endfor %}
</ol>

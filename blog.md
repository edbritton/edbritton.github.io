---
title: Ed’s blog
published: true
---
{% for post in site.posts %}
---
[{{ post.title }}]({{ post.url }})
    <svg class="w1" data-icon="chevronRight" viewBox="0 0 32 32" style="fill:currentcolor">
      <title>chevronRight icon</title>
      <path d="M12 1 L26 16 L12 31 L8 27 L18 16 L8 5 z"></path>
    </svg>
{% endfor %}

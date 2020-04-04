---
title: Ed’s blog
---
[<svg class="w2 v-mid mb1" data-icon="chevronLeft" viewBox="0 0 32 32" style="fill:currentcolor"><title>chevronLeft icon</title><path d="M20 1 L24 5 L14 16 L24 27 L20 31 L6 16 z"></path></svg> Ed’s website](/)

<ul class="list pl0 mt0 measure center">{% for post in site.posts %}
  <li>
  	<a class="flex items-center lh-copy pa3 bb b--black-10 hover-bg-red hover-white" href="{{post.url}}">
      <div class="flex-auto">{{ post.title }}</div>
      <svg class="w1 gray" data-icon="chevronRight" viewBox="0 0 32 32" style="fill:currentcolor"><title>chevronRight icon</title><path d="M12 1 L26 16 L12 31 L8 27 L18 16 L8 5 z"></path></svg>
    </a>
  </li>{% endfor %}
</ul>

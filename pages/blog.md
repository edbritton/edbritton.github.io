---
title: Ed’s blog
permalink: /blog/index.html
---

<ul class="list pl0 mt0 measure center">{% for post in site.posts %}{% unless post.draft %}
{% capture currentdate %}{{post.date | date: "%Y"}}{% endcapture %}
{% if currentdate != thedate %}
<h2>{{ currentdate }}</h2>{% capture thedate %}{{currentdate}}{% endcapture %}
{% endif %}
  <li>
  	<a class="flex items-center lh-copy pa3 bb b--black-10 hover-bg-dark-gray white" href="{{post.url}}">
      <div class="flex-auto">{{ post.title }} {{ post.date | date: "%m.%d" }}</div>
      <svg class="w1 gray" data-icon="chevronRight" viewBox="0 0 32 32" style="fill:currentcolor"><title>chevronRight icon</title><path d="M12 1 L26 16 L12 31 L8 27 L18 16 L8 5 z"></path></svg>
    </a>
  </li>
{% endunless %}{% endfor %}
</ul>

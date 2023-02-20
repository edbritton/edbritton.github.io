---
title: Ed’s Projects
permalink: /repos/index.html
redirect_from:
  - /projects/
  - /repositories/
  - /github/
---

<p align="center"><img src="{{site.github.owner.avatar_url}}" height="148"></p>

{% for repository in site.github.public_repositories | sort: "pushed_at" %}
<h2>{{ repository.name }} <small><time>{{ repository.pushed_at | date: "%Y-%m-%d" }}</time></small>

{{ repository.description }}

[{{ repository.name }}]({% if repository.homepage %}{{ repository.homepage }}{% else %}{{ repository.html_url }}{% endif %})

{% unless forloop.last %}<hr color="silver" size="0.5px">{% endunless %}
{% endfor %}
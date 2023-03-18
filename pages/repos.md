---
title: Ed’s projects
permalink: /repos/
redirect_from:
  - /projects/
  - /repositories/
  - /github/
---

{% assign repos = site.github.public_repositories | sort: "pushed_at" | reverse %}
{% for repo in repos %}
**[{% if repo.fork %}{% octicon repo-forked height:16 aria-label:"Forked repo: " fill:currentcolor %}&nbsp;{% endif %}{{ repo.name }}]({% if repo.homepage and repo.homepage != "" %}{{ repo.homepage }}{% else %}{{ repo.html_url }}{% endif %})** 
<small><time datetime="{{ repo.pushed_at | date: '%Y-%m-%d' }}">{{ repo.pushed_at | date: "%Y-%m-%d" }}</time></small>

{{ repo.description }}

{% unless forloop.last %}<hr size="0.5px">{% endunless %}
{% endfor %}

<a href="https://github.com/{{ site.github.owner.login }}">{% octicon logo-github height:16 aria-label:"GitHub" fill:currentcolor %}</a>
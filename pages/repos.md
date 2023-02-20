---
title: Ed’s GitHub Repositories
permalink: /repos/index.html
published: true
---

<ol aria-label="Repos listed in reverse order, newest first." reversed>
{% for repo in site.github %}
<li><a href="{{repo.url}}" accesskey="{{forloop.rindex}}">{{repo.repository_name}}</a></li>
{% endfor %}
</ol>

![]({{siie.github.ownder_gravatar_url}})

{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }})
{% endfor %}
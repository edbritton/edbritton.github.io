---
title: Ed’s GitHub Repositories
permalink: /repos/index.html
published: true
---

<p align="center"><img src="{{site.github.owner_gravatar_url}}" height="148"></p>

{% for repository in site.github.public_repositories %}
[{{ repository.name }}]({{ repository.html_url }})  
{% endfor %}

<pre>
{{site.github}}

----------

{{site.github.public_repositories}}
</pre>
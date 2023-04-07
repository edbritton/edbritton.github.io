{% if site.github.owner.bio %}{{ site.github.owner.bio }} {% endif %}

{% assign pinned = site.github.public_repositories | sort: "pushed_at" | reverse | where_exp: "pinned", "pinned.homepage" | where_exp: "pinned", "pinned.homepage != ''"%}
{% assign remaining = site.github.public_repositories | sort: "pushed_at" | reverse | where_exp: "remaining", "remaining.has_pages == false" %}

<dl>{% for repo in pinned %}{% if forloop.first %}<dt>{% octicon pin height:16 aria-label:"Pinned repos" fill:currentcolor %}</dt>{% endif %}<dd>
<a href="{{ repo.homepage }}"><strong>{% if repo.fork %}{% octicon repo-forked height:16 aria-label:"Forked repo: " fill:currentcolor %}&nbsp;{% endif %}{{ repo.name }}</strong></a>
</dd>{% endfor %}</dl>

<dl>{% for repo in remaining %}{% if forloop.first %}<dt>{% octicon repo height:16 aria-label:"Pinned repos" fill:currentcolor %}</dt>{% endif %}<dd>
<a href="{{ repo.homepage }}">{% if repo.archived %}{% octicon archive height:16 aria-label:"Archived repo: " fill:currentcolor %}&nbsp;{% endif %}{% if repo.fork %}{% octicon repo-forked height:16 aria-label:"Forked repo: " fill:currentcolor %}&nbsp;{% endif %}{{ repo.name }}</a>
</dd>{% endfor %}</dl>
---
description: Once upon a time nearly every website was an invisible spreadsheet table, now not even a table is a table anymore.
tags: webdev, html
---

In the 90s websites were simple, often they were either ugly but full of very informative text, or they were pretty and full of big picture files which your dial-up modem would struggle to load for you.

Regardless of the text-to-pictures ratio, nearly every webpage arranged elements on the screen by using a “table” as a method of creating columns with sensible width. This was how you could have links listed on the left, all of your body text in the centre, and a smorgasbord of animated GIFs and rolling marquees cluttering up the right of the screen.

<aside aria-hidden="true"><marquee>If you missed the internet of the 90s, this is a marquee!</marquee></aside>

Tables were extremely useful, not only because tables used to be space-bar punching bags, but also for the afore mentioned page layout method.

<pre align="center">
[ RESUME ]
.------+----------------------------.
| DATE |         JOB TITLE          |
|======|============================|
| 2021 | Webmaster of this site     |
| 2020 | What did you do that year? |
'------+----------------------------'
</pre>
<p align="center"><small>The old way of making “tables.”</small></p>

<hr color="silver" size="0.5px">

<figure>
<pre align="center" style="line-height:1.3 !important" aria-hidden="true">
┌──────┬────────────────────────────┐
│ DATE │ JOB TITLE                  │
╞══════╪════════════════════════════╡
│ 2021 │ Webmaster of this site     │
│ 2020 │ What did you do that year? │
└──────┴────────────────────────────┘
</pre>
<small><figcaption>There are also specific box-building characters in unicode which make everything look a like a real table. But VoiceOver on my iPhone changes to Japanese when these characters are read.</figcaption></small>
</figure>

---

| Date | Job title                  |
|-----:|----------------------------|
| 2021 | Webmaster of this site     |
| 2020 | What did you do that year? |

<p align="center"><small>New way of making a table, doing real tabley things.</small></p>

However, the people at “big internet” were mad at us for using tables for anything other than listing the capital cities of the world, so they told us to “stop using tables like that!” And instead gave us another way of placing our dancing baby animation in just the right spot on the page. They gave us CSS.


## How exactly did that ruin tables?

I’m getting to it, calm down.

Basically, everyone was being told <em>tables are bad</em> and *CSS is good* and if you used tables you were a bad webmaster. <aside>We really did use the word <dfn>webmaster</dfn>.</aside>

Eventually it seems that everyone forgot about tables completely, which is where we are ruined.

Last week I went to a website looking for a list of roles an actor had credits for. I found what I needed, presented in columns of *year*, *role*, *medium*, *director*, and so on.

“Wonderful” I thought. I selected them all. <kbd>Cmd&nbsp;+&nbsp;C</kbd>. Open a spreadsheet. <kbd>Cmd&nbsp;+&nbsp;V</kbd> and… oh dear.

What I had found was not a table, but a series of <code>div</code>s which were being styled to arrange like a table. It would have been hours of work to build the damn thing. What a waste of time.


## Why is this even a problem?

You’re not very sympathetic are you.

It is a problem because:

1. It suggests that people whom companies pay to build their websites don’t actually know what they’re doing. You wouldn’t go to a car mechanic who uses olive oil instead of engine oil.
2. It is a pain in the butt for anyone who wants to collect that information and make use of it quickly and easily.
3. Worst of all, anyone with accessibility requirements may not be able to consume your website. Do you really want to be the company whose website is infamous amongst the vision impaired community for basically being unusable?

<p align="right"><small>Ranted by <span itemprop="author">Ed Britton</span></small>

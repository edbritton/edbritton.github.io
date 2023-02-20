---
title: Simplicity for accessibility
description: If you make a website that is mainly text, it will be easier for visually impared users. But there’s more we can do.
---

In a previous blog post of mine…

<a href="./21123" accesskey="1" aria-label="Read that article here">Tablephobia ruined tables</a>

…I lamented the lack of correct markup use when making tables of data on websites.

One thing about that post which probably matters more than my annoyance at bad copy-paste ability is that accessibility.

When a screen reader, <em aria-hidden="true">like VoiceOver built into Macs and iPhones for example,</em> tries to read crappy tables out to the user, it has the unenviable task of conveying complex (and no doubt boring) information to someone with words only. A “table” made up of random elements simply rearranged to <em>look</em> like a table will be impossible for someone listening.

This is a lesson in using simple and correct HTML with predictable hierarchy and <code>alt</code> text on images which need them.


## So that’s it then? Use tables and alt text?

No. Think about what the experience is like for the visually impaired, heck turn on VoiceOver on your iPhone and navigate your site without looking at it!

Even this very simply made site was missing things initially. Navigating the list of blog posts was fine, but it wasn’t easy.

I flipped to VoiceOver and navigated my site, moving around was easy, some links could have been more descriptive, but the blog list came so quickly I had no idea if I was on the right page.

The main problem was one missing sentence: <q>Blog posts listed in reverse order, newest first.</q>

This addition would give enough time and context that everything that followed was obvious.

But adding that text to the page feels superfluous to those who can already see that it’s a list of blog posts. Which is why I added the sentence in a <em>for screen readers only</em> section.


## Use `aria` attributes!

ARIA attributes come to the rescue, and they’re not as confusing as you think.

If you need to add some text to better explain something on the page, simply add an `aria-label="A big list of my previous cats with photos."` attribute.

If you’ve put something which could be ignored by a screen reader, like a `marquee`, then throw in an `aria-hidden="true"`.

Simple!

There are more things you can do, but if you use just those two things, you’ll be doing better than bugger-all.
---
title: Collapsible nav menus with pure HTML
---
<p align="center"><big itemprop="description">Looking for a way to have a drop-down style menu but also want to remain a card carrying member of the #nocss club? Then you’ll want to look after the details.</big></p>

<p>All you need to do is surround your would-be menu with <code>&lt;details&gt;</code> and insert <code>&lt;summary&gt;<var title="Or something else">Menu</var>&lt;/summary&gt;</code> as the first child. Easy.</p>

<dl>
<dt>HTML</dt>
<dd>
<pre>&lt;details open<sup><a href="#fn:1" name="fnref:1">1</a></sup>&gt;
&lt;summary&gt;Menu&lt;/summary&gt;
&lt;a href="/"&gt;Home&lt;/a&gt;
&lt;a href="/blog"&gt;Blog&lt;/a&gt;
&lt;a href="/about"&gt;About&lt;/a&gt;
&lt;/details&gt;</pre>
</dd>

<dt>Result</dt>
<dd>
<details open>
<summary>Menu <mark>← <em>click here</em>&nbsp;</mark></summary>
<a href="/">Home</a>
<a href="/blog">Blog</a>
<a href="/about">About</a>
</details>
</dd>
</dl>

<p>It may not be perfect, and in Safari it seems to render as a full width block, but if you don’t care about brutalist web design, you  could always throw in some CSS to make it look more like you’d prefer.</p>

<hr color="silver" size="0.5px">

<ol aria-label="Footnotes">
<li id="fn:1">Adding <code>open</code> to the element makes it “open” on load. <a href="#fnref:1">↩</a></li>
</ol>

<a href="#top" id="bottom" accesskey="g" aria-label="Back to top of page">Top of page</a>
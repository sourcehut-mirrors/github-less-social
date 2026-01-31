===============================================================================
Microsoft GitHub Less Social
===============================================================================

.. role:: del

I don’t wish to use the proprietary code forge, but when I do, I want less
social features in my face trying to get me to ‘engage’. This filter list looks
to hide features that involve distractions & clutter on the platform. The base
list tries to clean up the feeds quite a bit, pushing some of the bright colors
& button to when you actually click into the item for a detail view, as well as
the most gross upsells & Copilot bullshit.

To give Microsoft GitHub some credit, it’s because they do a decent job with
``aria-*`` tags for accessibility & :del:`sane markup` (markup *used* to be
sane, but the more Microsoft GitHub moves towards the Tailwind fad, the more
meaningful classes & :ac:`ID`\s have begun to disappear) that the filter list
gets to be concise.

.. tip::

	*Do* encourage projects to migrate to or support mirrors on free (as in
	freedom) code forges like the ones this project uses, Codeberg & SourceHut.

Git Mirrors
===============================================================================

Codeberg (primary)
	https://codeberg.org/toastal/github-less-social

SourceHut
	https://git.sr.ht/~toastal/github-less-social


Usage
===============================================================================

It’s required that you start with an ad blocker add-on that supports filters.
My suggestion is `uBlock Origin`_ which is available on many platforms & the
following instructions are *only* for this add-on.

.. _`uBlock Origin`: https://ublockorigin.com/

.. compound::

	To add GitHub Less Social filter list:

	1. Open uBlock Origin’s settings
	2. Go to “Filter lists” tab
	3. Scroll to the bottom of the list to “Custom”
	4. Enable “Import…” if not checked already
	5. Add
	   ``https://codeberg.org/toastal/github-less-social/raw/branch/trunk/list.txt``
	   *or* ``https://git.sr.ht/~toastal/github-less-social/blob/trunk/list.txt``
	   to a new line
	6. Click the big check mark button in the actions bar to apply

For a more aggressive option (opinionated: hides more upsell items, images,
MS-GitHub-account-required comment sections, & so on), use
``https://codeberg.org/toastal/github-less-social/raw/branch/trunk/aggressive.txt``
*or* ``https://git.sr.ht/~toastal/github-less-social/blob/trunk/aggressive.txt``
instead. If you do not like a part of these lists, feel free to assemble your own
using the ``modules/*.txt`` files.

Additionally I have a user style @
``https://codeberg.org/toastal/github-less-social/raw/branch/trunk/styles.css``
*or* ``https://git.sr.ht/~toastal/github-less-social/blob/trunk/styles.css``
that will tone down some of the bright colors like those from avatars & emoji
(but will show color on hover). These also duplicate some of the uBlock hides
for users without add-on support. An aggressive option is @
``https://codeberg.org/toastal/github-less-social/raw/branch/trunk/aggressive.css``
*or*
``https://git.sr.ht/~toastal/github-less-social/blob/trunk/aggressive.css``

.. warning::

	Don’t use Google Chrome. LibreWolf, Mullvad, Ungoogled Chromium, Thorium,
	& all the others are a better option. If you’re concerned about ads, you
	should be aware that Google’s entire browser is adware.


License
===============================================================================

This project is licensed under GNU Lesser General Public License, version 2.1
(LGPL-2.1-or-later_) – see the ``COPYING.txt`` & ``COPYING.LESSER.txt`` files
in this project for details.

.. _LGPL-2.1-or-later: https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html


Pitching in
===============================================================================

Send pull request to:
https://codeberg.org/toastal/github-less-social/pulls

Send patches to the mailing list:
https://lists.sr.ht/~toastal/github-less-social

Don’t forget to add yourself to ``./meta/hackmates.ncl`` following Nickel spec
(else I will do it for you using the just the ‘name’ in the patch).

If needed, there is a `chat room`_ for the project that can be used for
discussion & submitting a pull request from a different location.

.. _chat room: xmpp:github-less-social@chat.toastal.in.th?join


Funding
===============================================================================

If you want to make a small contribution to the maintenance of this & other
projects:

Crowdfunding
	• Liberapay: `toastal <https://liberapay.com/toastal>`_

Cryptocurrency
	• Bitcoin: 39nLVxrXPnD772dEqWFwfZZbfTv5BvV89y_
	  (`BTC verified on Keybase <https://keybase.io/toastal/sigchain#690220ca450a3e73ff800c3e059de111d9c1cd2fcdaf3d17578ad312093fff2c0f>`_)
	• Zcash (unshielded): t1a9pD1D2SDTTd7dbc15KnKsyYXtGcjHuZZ_
	  (`ZEC verified on Keybase <https://keybase.io/toastal/sigchain#65c0114a3c8ffb46e39e4d8b5ee0c06c9eb97a02c4f6c42a2b157ca83b8c47c70f>`_)

.. _39nLVxrXPnD772dEqWFwfZZbfTv5BvV89y: bitcoin://39nLVxrXPnD772dEqWFwfZZbfTv5BvV89y?message=Funding%20toastal%E2%80%99s%20nvim-tree-sitter-unicode-conceal%20development
.. _t1a9pD1D2SDTTd7dbc15KnKsyYXtGcjHuZZ: zcash://t1a9pD1D2SDTTd7dbc15KnKsyYXtGcjHuZZ?message=Funding%20toastal%E2%80%99s%20nvim-tree-sitter-unicode-conceal%20development

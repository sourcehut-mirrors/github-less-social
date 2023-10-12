==================
GitHub Less Social
==================

.. role:: del

I don’t wish to use the proprietary code forge, but when I do I want less social features in my face trying to get me to ‘engage’.
This filter list looks to hide features that involve distractions & clutter on the platform.
The base list tries to clean up the feeds quite a bit, pushing some of the bright colors & button to when you actually click into the item for a detail view, as well as the most gross upsells.

To give Microsoft GitHub some credit, it’s because they do a decent job with ``aria-*`` tags for accessibility & :del:`sane markup` (markup *used* to be sane, but the more Microsoft GitHub moves towards the Tailwind fad, the more meaningful classes & :ac:`ID`\s have begun to disappear) that the filter list gets to be concise.

.. TIP::

	*Do* encourage projects to migrate to or support mirrors on libre code forges like the one here on SourceHut.


Usage
=====

It’s required that you start with an ad blocker add-on that supports filters. My suggestion is `uBlock Origin`_ which is available on many platforms & the following instructions are *only* for this add-on.

.. _`uBlock Origin`: https://ublockorigin.com/

.. compound::

	To add GitHub Less Social filter list:

	#. Open uBlock Origin’s settings
	#. Go to “Filter lists”
	#. Scroll to the bottom of the list to “Custom”
	#. Enable “Import…” if not checked already
	#. Add ``https://git.sr.ht/~toastal/github-less-social/blob/trunk/list.txt`` to a new line
	#. Click the big check mark button in the actions bar to apply

For a more aggressive option (opinionated: hides more upsell items, images, :ab:`etc.`), use ``https://git.sr.ht/~toastal/github-less-social/blob/trunk/aggressive.txt`` instead.

Additionally I have a user style @ ``https://git.sr.ht/~toastal/github-less-social/blob/trunk/styles.css`` that will tone down some of the bright colors like those from avatars & emoji (but will show color on hover).

.. WARNING::

	Don’t use Google Chrome. Firefox, LibreWolf, Mullvad, Brave, & all the others are a better option. If you’re concerned about ads, you should be aware that Google’s entire browser is adware.


License
=======

This project is licensed under GNU Lesser General Public License, version 2.1 (LGPL-2.1-or-later_) – see the ``COPYING.txt`` & ``COPYING.lesser.text`` files in this project for details.

.. _LGPL-2.1-or-later: https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html


Contributing
============

Send patches to the mailing list: https://lists.sr.ht/~toastal/github-less-social

Don’t forget to add yourself to ``./CONTRIBUTORS.ncl`` (else I will do it for you using the ‘name’ in the patch).

Funding
=======

If you want to make a small contribution to the maintenance of this & other projects:

Crowdfunding
	• Liberapay: `@toastal <https://liberapay.com/toastal>`_

Cryptocurrency
	• Bitcoin: 39nLVxrXPnD772dEqWFwfZZbfTv5BvV89y_ (`BTC verified on Keybase <https://keybase.io/toastal/sigchain#690220ca450a3e73ff800c3e059de111d9c1cd2fcdaf3d17578ad312093fff2c0f>`_)
	• Zcash: t1a9pD1D2SDTTd7dbc15KnKsyYXtGcjHuZZ_ (`ZEC verified on Keybase <https://keybase.io/toastal/sigchain#65c0114a3c8ffb46e39e4d8b5ee0c06c9eb97a02c4f6c42a2b157ca83b8c47c70f>`_)

.. _39nLVxrXPnD772dEqWFwfZZbfTv5BvV89y: bitcoin://39nLVxrXPnD772dEqWFwfZZbfTv5BvV89y?message=Funding%20toastal%E2%80%99s%20nvim-tree-sitter-unicode-conceal%20development
.. _t1a9pD1D2SDTTd7dbc15KnKsyYXtGcjHuZZ: zcash://t1a9pD1D2SDTTd7dbc15KnKsyYXtGcjHuZZ?message=Funding%20toastal%E2%80%99s%20nvim-tree-sitter-unicode-conceal%20development

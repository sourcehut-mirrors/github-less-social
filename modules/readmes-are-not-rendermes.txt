! SPDX-License-Identifier: LGPL-2.1-or-later
! Copyright © 2022–2026 toastal
! Title: MS GitHub Less Social — READMEs are not RENDERMEs
! Version: 2026.01.05
! Homepage: https://codeberg.org/toastal/github-less-social
! License: https://codeberg.org/toastal/github-less-social/src/branch/trunk/COPYING.LESSER.txt
! Support: https://codeberg.org/toastal/github-less-social/issues

! READMEs are not RENDERMEs — this is what homepages are for. Reduces noisy
! images like badges that don’t help understand the project. If only there were
! a way to remove useless emoji bullet points.

github.com##article.markdown-body a:first-child:has(img[src*=".githubusercontent.com/"])
github.com##img:is([data-canonical-src^="https://img.shields.io/github/"],[data-canonical-src^="https://img.shields.io/reddit/"],[data-canonical-src^="https://img.shields.io/twitter/"])
github.com##img[data-canonical-src^="https://contributors-img.web.app"]
github.com##img[data-canonical-src^="https://opencollective.com/"][data-canonical-src*="tiers/supporter.svg"]

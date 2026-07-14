# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Collection of multiple types of security lists"
HOMEPAGE="https://github.com/danielmiessler/SecLists"
EGIT_REPO_URI="https://github.com/danielmiessler/SecLists.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

src_install() {
    insinto /usr/share/seclists
    doins -r .
}

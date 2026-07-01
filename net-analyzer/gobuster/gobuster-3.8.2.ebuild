# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="Directory/file & DNS busting tool written in Go"
HOMEPAGE="https://github.com/OJ/gobuster"

SRC_URI="https://github.com/OJ/gobuster/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RESTRICT="network-sandbox"

S="${WORKDIR}/gobuster-${PV}"

src_compile() {
	ego build -mod=vendor -o gobuster .
}

src_install() {
	dobin gobuster
}


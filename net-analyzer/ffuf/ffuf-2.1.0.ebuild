# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

EGO_PN="github.com/ffuf/ffuf/v2"

inherit go-module

DESCRIPTION="Fast web fuzzer written in Go"
HOMEPAGE="https://github.com/ffuf/ffuf"
SRC_URI="https://github.com/ffuf/ffuf/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

BDEPEND="dev-lang/go"

# REQUIRED: let go-module handle dependencies properly
src_unpack() {
    default
    cd "${S}" || die
}

src_compile() {
    ego build -o ffuf ./cmd/ffuf
}

src_install() {
    dobin ffuf
}

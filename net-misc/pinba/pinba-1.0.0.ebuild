# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2 eutils

DESCRIPTION="Pinba (PHP Is Not A Bottleneck Anymore) is a statistics server
using MySQL as an interface."
HOMEPAGE="http://pinba.org/"
EGIT_REPO_URI="https://github.com/tony2001/pinba_engine.git"

LICENSE="GNU GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="|| ( dev-db/mariadb dev-db/mysql )
<=dev-libs/protobuf-2.4.1
dev-libs/judy
>=dev-libs/libevent-1.4.1
"
RDEPEND="${DEPEND}"


src_prepare() {
	if [[ -x ${EGIT_SOURCEDIR}/buildconf.sh ]] ;then
		${EGIT_SOURCEDIR}/buildconf.sh
	fi
	epatch "${FILESDIR}"/configure.patch
}

src_configure() {
	if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
		econf --with-mysql=/usr/include/mysql
	fi
}


# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="Ruby writen and EventMachine based Haproxy weight balancer"
HOMEPAGE="https://github.com/undying/harbalance"
SRC_URI=""
EGIT_REPO_URI="https://github.com/undying/harbalance"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dodir /etc/harb

	newbin ${S}/harb.rb harb
	newbin ${S}/harbd.rb harbd

	newins ${S}/harb.conf.sample /etc/harb/harb.conf
	newins ${S}/harbd.conf.sample /etc/harb/harbd.conf
}


# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

PYTHON_COMPAT=( python2_{5,6,7} pypy{1_9,2_0} )

inherit distutils

DESCRIPTION="Generic tagging application for Django"
HOMEPAGE="http://code.google.com/p/django-tagging/"
SRC_URI="http://django-tagging.googlecode.com/files/${P}.tar.gz"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

pkg_setup() {
	if [[ "${LANG}" != *"UTF-8" ]]
	then
		die "There have been reports of build failues with non UTF-8 locales. Please set a UTF-8 locale and try again"
	fi
	return
	python_pkg_setup
}


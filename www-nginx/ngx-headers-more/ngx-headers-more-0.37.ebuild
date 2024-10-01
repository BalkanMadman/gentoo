# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="headers-more-nginx-module"
inherit nginx-module

DESCRIPTION="Set, add, and clear arbitrary output headers in NGINX HTTP servers"
HOMEPAGE="https://github.com/openresty/headers-more-nginx-module"
SRC_URI="
	https://github.com/openresty/headers-more-nginx-module/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
"
NGINX_MOD_S="${WORKDIR}/${MY_PN}-${PV}"

LICENSE="BSD-2"
SLOT="0"
# Tests require Test::Nginx perl module, not packaged by Gentoo.
RESTRICT="test"

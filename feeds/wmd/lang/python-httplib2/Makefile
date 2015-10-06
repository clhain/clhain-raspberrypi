#
# Copyright (C) 2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=httplib2
PKG_VERSION:=0.7.4
PKG_RELEASE:=1

PKG_SOURCE:=httplib2-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://httplib2.googlecode.com/files/
PKG_MD5SUM:=9501be67448bf8f673ad3f68e6d3cd22

PKG_BUILD_DIR:=$(BUILD_DIR)/httplib2-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/httplib2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=httplib2
  URL:=http://httplib2.googlecode.com/files/
  DEPENDS:=+python +distribute
endef

define Package/httplib2/description
  Httplib2 for Python
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix=/usr --root=$(PKG_INSTALL_DIR))
endef

define Package/httplib2/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
	$(CP) \
	    $(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
	    $(1)$(PYTHON_PKG_DIR)
endef

$(eval $(call BuildPackage,httplib2))

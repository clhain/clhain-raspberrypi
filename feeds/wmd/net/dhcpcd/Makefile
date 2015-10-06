#
# Copyright (C) 2007-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=dhcpcd
PKG_VERSION:=5.5.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://roy.marples.name/downloads/dhcpcd/
PKG_MD5SUM:=a5c0e43b4e836cfc003437329f6b7982

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/dhcpcd
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=IP Addresses and Names
  TITLE:=DHCP client for automatically configuring IPv4 networking
  URL:=http://roy.marples.name/projects/dhcpcd
  DEPENDS:=+librt
endef

define Package/dhcpcd/description
	Simple configuration: supports executions of a script when the
	IP address changes.
endef

define Build/Configure
  $(call Build/Configure/Default)
endef

define Package/dhcpcd/install
	$(INSTALL_DIR) $(1)/usr
	$(CP) $(PKG_INSTALL_DIR)/usr/* $(1)/usr/
endef

$(eval $(call BuildPackage,dhcpcd))


# Synapse Admin for YunoHost

[![Integration level](https://dash.yunohost.org/integration/synapse-admin.svg)](https://dash.yunohost.org/appci/app/synapse-admin) ![](https://ci-apps.yunohost.org/ci/badges/synapse-admin.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/synapse-admin.maintain.svg)  
[![Install Synapse Admin with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=synapse-admin)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Synapse Admin quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

**Shipped version:** 0.8.0

## Screenshots

![](https://raw.githubusercontent.com/Awesome-Technologies/synapse-admin/master/screenshots.jpg)

## Configuration

## Documentation

 * Official documentation: 
 * YunoHost documentation: https://yunohost.org/en/app_synapse-admin

## YunoHost specific features

#### Multi-user support

* Is LDAP supported? **NO**
* Can the app be used by multiple users? **NO**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/synapse-admin.svg)](https://ci-apps.yunohost.org/ci/apps/synapse-admin/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/synapse-admin.svg)](https://ci-apps-arm.yunohost.org/ci/apps/synapse-admin/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/synapse-admin_ynh/issues
 * Upstream app repository: https://github.com/Awesome-Technologies/synapse-admin
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/synapse-admin_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/synapse-admin_ynh/tree/testing --debug
or
sudo yunohost app upgrade synapse-admin -u https://github.com/YunoHost-Apps/synapse-admin_ynh/tree/testing --debug
```

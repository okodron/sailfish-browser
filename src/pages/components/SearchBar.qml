/****************************************************************************
**
** Copyright (C) 2014 Jolla Ltd.
** Contact: Vesa-Matti Hartikainen <vesa-matti.hartikainen@jolla.com>
**
****************************************************************************/

/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/. */

import QtQuick 2.2
import Sailfish.Silica 1.0
import Sailfish.Browser 1.0
import "." as Browser
import QtQuick 2.0

Item {
    id: searchBar
    width: parent.width
    height: isPortrait ? Settings.toolbarLarge : Settings.toolbarSmall

    property string search

    Row {
        anchors.centerIn: parent
        height: parent.height
        spacing: Theme.paddingMedium

        Browser.IconButton {
            id: backIcon
            width: Theme.iconSizeMedium + 2 * Theme.paddingMedium
            height: searchBar.height
            icon.source: "image://theme/icon-m-left"

            onTapped: {
                webView.sendAsyncMessage("embedui:find", { text: search, backwards: true, again: true })
            }
        }

        Label {
            anchors.verticalCenter: parent.verticalCenter
            text: "Find: \"" + search + "\""
        }

        Browser.IconButton {
            id: forwardIcon
            width: Theme.iconSizeMedium + 2 * Theme.paddingMedium
            height: searchBar.height
            icon.source: "image://theme/icon-m-right"

            onTapped: {
                webView.sendAsyncMessage("embedui:find", { text: search, backwards: false, again: true })
            }
        }
    }

    Browser.IconButton {
        anchors.right: parent.right
        anchors.rightMargin: Theme.paddingMedium
        anchors.verticalCenter: parent.verticalCenter
        width: Theme.iconSizeMedium
        height: searchBar.height
        icon.source: "image://theme/icon-m-reset"

        onTapped: {
            searchBar.visible = false
        }
    }

}

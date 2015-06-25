/****************************************************************************
**
** Copyright (C) 2015 Jolla Ltd.
** Contact: Dmitry Rozhkov <dmitry.rozhkov@jolla.com>
**
****************************************************************************/

/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/. */

#ifndef DECLARATIVEWEBPAGE_H
#define DECLARATIVEWEBPAGE_H

#include <QObject>

class DeclarativeWebPage : public QObject
{
    Q_OBJECT

public:
    explicit DeclarativeWebPage();

    int tabId() const;
    bool initialLoadHasHappened() const;
    void setInitialLoadHasHappened();
};

#endif

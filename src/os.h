#ifndef OS_H
#define OS_H

#include <sailfishapp/sailfishapp.h>
#include <QtGui/QGuiApplication>
#include <nemonotifications-qt5/notification.h>
#include <QtGui/QGuiApplication>
#include <QtCore/QtGlobal>
#include <QtCore/QDir>
#include <QtCore/QString>
#include <QtCore/QStringList>
#include <QtCore/QList>
#include <QtCore/QPair>
#include <QtCore/QFile>
#include <QtCore/QIODevice>
#include <QtCore/QTextStream>
#include <QtCore/QStandardPaths>
#include <QtCore/QDebug>

#define MAX_BODY_LENGTH 100
#define MAX_PREVIEW_LENGTH 40

class OS: public QObject {
    Q_OBJECT
    Q_PROPERTY(QString release READ release)
    Q_PROPERTY(QString version READ version)
    Q_PROPERTY(QString appName READ appName)
    Q_PROPERTY(QString appNamePretty READ appNamePretty)
    Q_PROPERTY(QString appVersion READ appVersion)
    Q_PROPERTY(QString devicepixelratio READ devicepixelratio)

public:
    explicit OS();
    Q_INVOKABLE void createNotification(QString title, QString text, QString feedback, QString category);
    Q_INVOKABLE void createToaster(QString text, QString icon, QString category);
    Q_INVOKABLE void closeNotificationByCategory(QString category);
    Q_INVOKABLE void closeNotificationByReplacesId(QString replacesId);
    Q_INVOKABLE void closeNotificationAll();
    QString release();
    QString version();
    QString device();
    QString cacheLocation();
    QString dataLocation();
    QString configLocation();
    QString photoLocation();
    QString musicLocation();
    QString documentLocation();
    QString videoLocation();
    QString downloadLocation();
    QString logLocation();
    QString logFile();
    QString appName();
    QString appNamePretty();
    QString appVersion();
    qreal devicepixelratio();

private:
    QList<QPair<QString, QString>> extractFileData(QString location, QStringList querryList);
    QString m_release;
    QString m_version;
    QString m_device;
};

#endif // OS_H

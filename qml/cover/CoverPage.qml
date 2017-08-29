import QtQuick 2.0
import Sailfish.Silica 1.0
import "../pages/js/util.js" as Util

CoverBackground {
    
    // App icon
    Image
    {
        id: imgcover
        source: "../resources/images/icon-cover.png"
        asynchronous: true
        opacity: 0.2
        width: parent.width * 1.15
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        fillMode: Image.PreserveAspectFit
    }
    
    Column {
        anchors { fill: parent; margins: Theme.horizontalPageMargin }
        spacing: Theme.paddingLarge

        // Messages
        Item {
            width: parent.width
            height: parent.height/3
            Label {
                id: numberOfMessages
                height: parent.height
                anchors { left: parent.left; top: parent.top; }
                font.pixelSize: Theme.fontSizeLarge
                font.bold: true
                color: Theme.highlightColor
                text: Util.formatNotificationNumber(2)
            }

            Label {
                anchors { left: numberOfMessages.right; top: parent.top; leftMargin: Theme.paddingMedium; }
                wrapMode: Text.WordWrap
                text: qsTr("unread") + "\n" + qsTr("message(s)")
            }
        }

        // Friend requests and notifications
        Row {
            spacing: Theme.paddingLarge
            anchors { left: parent.left; right: parent.right }

            // Notifications
            Image {
                width: Theme.iconSizeSmall
                height: width
                source: "../resources/images/icon-notifications.svg"
            }

            Label {
                font.bold: true
                color: Theme.highlightColor
                text: Util.formatNotificationNumber(3)
            }

            // Friend requests
            Image {
                width: Theme.iconSizeSmall*1.1
                height: width
                source: "../resources/images/icon-requests.svg"
            }

            Label {
                font.bold: true
                color: Theme.highlightColor
                text: Util.formatNotificationNumber(1)
            }
        }
    }
}


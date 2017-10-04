import QtQuick 2.2
import Sailfish.Silica 1.0
import QtWebKit 3.0
<<<<<<< HEAD
import QtWebKit.experimental 1.0
import "./js/util.js" as Util
=======
import "../js/util.js" as Util
import "../components"
>>>>>>> upstream/master

Page {
    FBWebview {
        id: fbWebview
        anchors { left: parent.left; right: parent.right; top: parent.top; bottom: navigation.top }
        visible: opacity > 0
        Behavior on opacity { FadeAnimation {} }
    }

    Rectangle {
        id: navigation
        height: Theme.itemSizeMedium
        color: Util.getBackgroundColor(settings.theme)
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        Row {
            anchors { fill: parent }
<<<<<<< HEAD
            NavigationButton { onClicked: fbWebview.goBack(); iconSource: "../resources/images/icon-back.svg"; visible: settings.placeBack==1 && fbWebview.canGoBack }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/home.php?sk=" + Util.getFeedPriority(settings.priorityFeed)); notifyIndicator: Util.formatNotificationNumber(0); iconSource: "../resources/images/icon-newsfeed.svg"; visible: settings.showFeed }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/friends"); notifyIndicator: Util.formatNotificationNumber(1); iconSource: "../resources/images/icon-requests.svg"; visible: settings.showFriends }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/messages"); notifyIndicator: Util.formatNotificationNumber(2); iconSource: "../resources/images/icon-messages.svg"; visible: settings.showMessages }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/notifications"); notifyIndicator: Util.formatNotificationNumber(3); iconSource: "../resources/images/icon-notifications.svg"; visible: settings.showNotifications }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/search"); notifyIndicator: Util.formatNotificationNumber(4); iconSource: "../resources/images/icon-search.svg"; visible: settings.showSearch }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/events/upcoming"); notifyIndicator: Util.formatNotificationNumber(5); iconSource: "../resources/images/icon-events.svg"; visible: settings.showEvents }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/groups"); notifyIndicator: Util.formatNotificationNumber(6); iconSource: "../resources/images/icon-groups.svg"; visible: settings.showGroups }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/pages/?category=liked"); notifyIndicator: Util.formatNotificationNumber(7); iconSource: "../resources/images/icon-pages.svg"; visible: settings.showLikedPages }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/settings"); notifyIndicator: Util.formatNotificationNumber(8); iconSource: "../resources/images/icon-settings.svg"; visible: settings.showSettings }
=======
            NavigationButton { onClicked: fbWebview.goBack(); iconSource: "qrc:///images/icon-back.svg"; visible: settings.placeBack==1 && fbWebview.canGoBack }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/home.php?sk=" + Util.getFeedPriority(settings.priorityFeed)); notifyIndicator: app.notifications[0]; iconSource: "qrc:///images/icon-newsfeed.svg"; visible: settings.showFeed }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/friends"); notifyIndicator: app.notifications[1]; iconSource: "qrc:///images/icon-requests.svg"; visible: settings.showFriends }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/messages"); notifyIndicator: app.notifications[2]; iconSource: "qrc:///images/icon-messages.svg"; visible: settings.showMessages }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/notifications"); notifyIndicator: app.notifications[3]; iconSource: "qrc:///images/icon-notifications.svg"; visible: settings.showNotifications }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/search"); notifyIndicator: app.notifications[4]; iconSource: "qrc:///images/icon-search.svg"; visible: settings.showSearch }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/events/upcoming"); notifyIndicator: app.notifications[5]; iconSource: "qrc:///images/icon-events.svg"; visible: settings.showEvents }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/groups"); notifyIndicator: app.notifications[6]; iconSource: "qrc:///images/icon-groups.svg"; visible: settings.showGroups }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/pages/?category=liked"); notifyIndicator: app.notifications[7]; iconSource: "qrc:///images/icon-pages.svg"; visible: settings.showLikedPages }
            NavigationButton { onClicked: fbWebview.setUrl("https://m.facebook.com/settings"); notifyIndicator: app.notifications[8]; iconSource: "qrc:///images/icon-settings.svg"; visible: settings.showSettings }
>>>>>>> upstream/master
        }
    }
}


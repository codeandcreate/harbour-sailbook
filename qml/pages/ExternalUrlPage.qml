import QtQuick 2.0
import Sailfish.Silica 1.0
import QtWebKit 3.0
<<<<<<< HEAD
import QtWebKit.experimental 1.0
=======
import "../components"
>>>>>>> upstream/master

Page {
    property string url

    ExternalWebview { externalUrl: url }
}

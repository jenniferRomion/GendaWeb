import QtQuick 2.9
import QtQuick.Controls 2.2
//import QtWebView 1.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtPositioning 5.8

import "MapPage"
import "../javascript/JSControl.js" as JSC

Page {

    id : mapPage

    property bool gpsActive : false
    property bool startNewTrek : false
    property bool map1_visibility: true

    Etat1 {
        id : etat1
        visible: true

    }

//    footer: Label {

//        text: "lat_lng"
//        font.pixelSize: Qt.application.font.pixelSize * 1.25
//        font.family: "Calibri"
//    }

    PositionSource{
        id: gpsPosition
        updateInterval: 3000
        active: mapPage.gpsActive

        onActiveChanged: {
            var coord = gpsPosition.position.coordinate;
            if (mapPage.gpsActive)
            {
            }
        }

        onPositionChanged: {
            var coord = gpsPosition.position.coordinate;
        }
    }
}

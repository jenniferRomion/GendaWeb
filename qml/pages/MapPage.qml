import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtPositioning 5.8
import QtLocation 5.3

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

}

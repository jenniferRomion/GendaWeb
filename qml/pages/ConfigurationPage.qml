import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"
import "ConfigurationPage"

Page {
    id : homePage

    property bool config_visibility: true



    header: Label {
        text: qsTr("Configuration")
        font.pixelSize: Qt.application.font.pixelSize * 2
        font.family: "acumin-pro"
        padding: 10
    }

    Etat1 {
        id : etat1
        visible: config_visibility
    }

    Etat2 {
        id : etat2
        visible: false
    }



}

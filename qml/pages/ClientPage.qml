import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"
import "ClientPage"

Page {
    id : clientPage

    property bool client1_visibility: true
    property bool client2_visibility: false
    property bool client3_visibility: false
    property bool client4_visibility: false
    property bool client5_visibility: false



    header: Label {
        text: qsTr("Mes clients")
        font.pixelSize: Qt.application.font.pixelSize * 2
        font.family: "acumin-pro"
        padding: 10
    }

        Etat1 {
            id : etat1
            visible: client1_visibility
        }

        Etat2 {
            id : etat2
            visible: client2_visibility
        }

        Etat3 {
            id : etat3
            visible: client3_visibility
        }

        Etat4 {
            id : etat4
            visible: client4_visibility
        }

        Etat5 {
            id : etat5
            visible: client5_visibility
        }

}



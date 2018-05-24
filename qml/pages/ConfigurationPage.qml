import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"
import "ConfigurationPage"

Page {
    id : configPage

    property bool config_visibility1: true
    property bool config_visibility2: false
    property bool config_visibility2_avatar: false
    property bool config_visibility2_color: false
    property bool config_visibility3: false
    property bool config_visibility3_ring: false


    /* force return to Etat1 */
    property int swipeIndex : swipeView.currentIndex
    onSwipeIndexChanged: {
        if (swipeIndex != 5)
        {
            config_visibility1 = true;
            config_visibility2 = false;
            config_visibility2_avatar = false;
            config_visibility2_color = false
            config_visibility3 = false;
            config_visibility3_ring = false
        }
    }

    //    header: Label {
    //        text: qsTr("Configuration")
    //        font.pixelSize: Qt.application.font.pixelSize * 2
    //        font.family: "acumin-pro"
    //        padding: 10
    //    }


    Etat1 {
        id : etat1
        visible: config_visibility1
    }

    Etat2 {
        id : etat2
        visible: config_visibility2
    }

    Etat2_avatar {
        id : etat2_avatar
        visible: config_visibility2_avatar
    }

    Etat2_color {
        id : etat2_color
        visible: config_visibility2_color
    }

    Etat3 {
        id : etat3
        visible: config_visibility3
    }

    Etat3_ring {
        id : etat3_ring
        visible: config_visibility3_ring
    }

    footer: Rectangle {
        width: configPage.width
        height: (1/15) * configPage.height
        color: colorMinor

        TextBox {
            id: rights
            text: "À propos"
            bold: true
            font.pixelSize: Qt.application.font.pixelSize * 1.25

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    popup.open()
                }
            }
        }

    }
    PopupCopyrights {
        id: popup
    }
}

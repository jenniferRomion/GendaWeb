import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    /* header */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.10 * etat.width
            color: "lightGrey"

            Image {
                source : "../../../images/icon/sound.png"
                height: 0.05 * mainPage.height
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.70 * etat.width
            color: "lightGrey"

            TextBox {
                text : "Compte"
                bold : true
                horizontalAlignment: Text.AlignLeft
            }
        }


        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.20 * etat.width
            color: "lightgrey"

            HeaderButtonReturn {
//                anchors.centerIn: parent
                onClicked: {
                    console.log("ok")
                    configurationPage.config_visibility2 = false
                    configurationPage.config_visibility1 = true
                }
            }
        }
    }



    RowLayout {
        spacing: 0
        Layout.preferredHeight: (7/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "yellow"

        }
    }

}

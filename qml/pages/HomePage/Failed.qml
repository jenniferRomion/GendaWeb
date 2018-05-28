import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import "../../javascript/httpRequest.js" as HttpScript

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (7/12) * parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "black"

            Image {
                id: failed
                anchors.centerIn: parent
                source: "../../../images/exclamation.png"
                height: 1/2 * etat.height
                fillMode: Image.PreserveAspectFit
            }


        }
    }


    /* Button */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/6)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "black"

            MyButton {
                text : "Retour"
                anchors.centerIn: parent
                width: (1/2) * etat.width
                height: (1/10) * etat.height

                onClicked: {
                    homePage.home_failed = false
                    homePage.home1_visibility = true
                }
            }
        }
    }


    /* Logo */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/4)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "black"

//            Logo {}
        }
    }


}

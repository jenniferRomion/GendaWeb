import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : root

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    property bool gendarme

    /* Customer's name */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true


        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.1 * root.width
            color: gendarme ? "#0548ff" : "#0aa705"

            Image {
                width: parent.width
                height: parent.height
                source: gendarme ? "../../../images/icon/gendarme_gris.png" : "../../../images/icon/infoClient.png"
                fillMode: Image.PreserveAspectFit

                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.9 * root.width
            color: gendarme ? "#0548ff" : "#0aa705"

            TextBox {
                text: gendarme ? "Lt Weber Quentin" : "Nom Prénom"
                bold : true
                color: "white"
                anchors.centerIn: parent
            }
        }
    }

    /* Gendarmerie ? */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        visible : gendarme

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.1 * root.width
            color: gendarme ? "#0548ff" : "#0aa705"

            Image {
                width: parent.width
                height: parent.height
                source: "../../../images/icon/gendflam.png"
                fillMode: Image.PreserveAspectFit

                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.9 * root.width
            color: gendarme ? "#0548ff" : "#0aa705"

            TextBox {
                text: "Gendarmerie de l'Hérault"
                color: "white"
                anchors.centerIn: parent
            }
        }
    }

    /* Customer's addresse */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.1 * root.width
            color: gendarme ? "#0548ff" : "#0aa705"

            Image {
                width: parent.width
                height: parent.height
                source: gendarme ? "../../../images/icon/position_gendarme.png" : "../../../images/icon/position_blanc.png"
                fillMode: Image.PreserveAspectFit

                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.8 * root.width
            color: gendarme ? "#0548ff" : "#0aa705"


            Text {
                text: "000km _ 00000 VILLE"
                color: "white"
                font.family: "Californian FB"
                anchors.left: parent.left
                padding: 0.5 * parent.height
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.1 * root.width
            color: gendarme ? "#0548ff" : "#0aa705"

            Image {
                width: parent.width
                height: parent.height
                source: "../../../images/icon/smiley.png"
                fillMode: Image.PreserveAspectFit

                anchors.centerIn: parent
            }
        }
    }
}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

RowLayout {

    id : root

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    property bool gendarmerie : true

    ColumnLayout {

        spacing: 0
        Layout.preferredWidth: 0.1 * parent.width
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.1 * root.width
            color: gendarmerie ? "DARKTURQUOISE" : "#0aa705"

            Image {
                width: parent.width
                height: parent.height
                source: gendarmerie ? "../../../images/icon/gendarmerie.png" : "../../../images/icon/infoClient.png"
                fillMode: Image.PreserveAspectFit

                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.preferredHeight: 0.3 * root.height
            Layout.preferredWidth: 0.1 * root.width
            color: gendarmerie ? "DARKTURQUOISE" : "#0aa705"

            Image {
                width: parent.width
                height: parent.height
                source: gendarmerie ? "../../../images/icon/position_gendarme.png" : "../../../images/icon/position.png"
                fillMode: Image.PreserveAspectFit

                anchors.centerIn: parent
            }
        }
    }

    ColumnLayout {

        spacing: 0
        Layout.preferredWidth: 0.8 * parent.width
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.8 * root.width
            color: gendarmerie ? "DARKTURQUOISE" : "#0aa705"

            TextBox {
                text: gendarmerie ? "Gendarmerie de l'Hérault" : "NOM Prénom"
                bold : true
                color: "white"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.preferredHeight: 0.2 * root.height
            Layout.preferredWidth: 0.8 * root.width
            color: gendarmerie ? "DARKTURQUOISE" : "#0aa705"

            TextBox {
                text: "000km _ 00000 VILLE"
                color: "white"
                anchors.centerIn: parent
            }
        }
    }

    ColumnLayout {

        spacing: 0
        Layout.preferredWidth: 0.1 * parent.width
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.1 * root.width
            color: gendarmerie ? "DARKTURQUOISE" : "#0aa705"
        }

        Rectangle {
            Layout.preferredHeight: 0.2 * root.height
            Layout.preferredWidth: 0.1 * root.width
            color: gendarmerie ? "DARKTURQUOISE" : "#0aa705"

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

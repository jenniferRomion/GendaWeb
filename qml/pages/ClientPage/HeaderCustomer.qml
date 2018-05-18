import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

RowLayout {
    id: root
    spacing: 0
    Layout.fillHeight: true
    Layout.fillWidth: true

    property bool gendarme /*: true*/
    property bool satisfaction /*: true*/

    ColumnLayout {
        spacing: 0
        Layout.fillHeight: true
        Layout.fillWidth: true

/*Customer Name */
        RowLayout {
            spacing: 0
            Layout.fillWidth: true
            Layout.preferredHeight: (1/2)*root.height

            Rectangle {
                Layout.preferredWidth: 0.1 * root.width
                Layout.preferredHeight: (1/2)*root.height
                color: gendarme ? "royalBlue" : "limeGreen"

                Image {
                    width: parent.width
                    height: parent.height
                    source: gendarme ? "../../../images/icon/gendarme_gris.png" : "../../../images/icon/infoClient.png"
                    fillMode: Image.PreserveAspectFit

                    anchors.centerIn: parent
                }
            }

            Rectangle {
                Layout.preferredWidth: 0.7 * root.width
                Layout.preferredHeight: (1/2)*root.height
                color: gendarme ? "royalBlue" : "limeGreen"

                TextBox {
                    text: gendarme ? "Lt Weber Quentin" : "Nom Prénom"
                    bold : true
                    color: "white"
                    anchors.centerIn: parent
                }
            }
        }

/*Gendarmerie */
        RowLayout {
            spacing: 0
            Layout.fillWidth: true
            Layout.preferredHeight: (1/4)*root.height

            opacity: gendarme ? 1 : 0

            Rectangle {
                Layout.preferredWidth: 0.1 * root.width
                Layout.preferredHeight: (1/4)*root.height
                color: gendarme ? "royalBlue" : "limeGreen"

                Image {
                    width: parent.width
                    height: parent.height
                    source: "../../../images/icon/gendflam.png"
                    fillMode: Image.PreserveAspectFit

                    anchors.centerIn: parent
                }
            }

            Rectangle {
                Layout.preferredWidth: 0.7 * root.width
                Layout.preferredHeight: (1/4)*root.height
                color: gendarme ? "royalBlue" : "limeGreen"

                TextBox {
                    text: "Gendarmerie de l'Hérault"
                    color: "white"
                    anchors.centerIn: parent
                }
            }
        }

/* Position */
        RowLayout {
            spacing: 0
            Layout.fillWidth: true
            Layout.preferredHeight: (1/4)*root.height

            Rectangle {
                Layout.preferredWidth: 0.1 * root.width
                Layout.preferredHeight: (1/4)*root.height
                color: gendarme ? "royalBlue" : "limeGreen"

                Image {
                    width: parent.width
                    height: parent.height
                    source: gendarme ? "../../../images/icon/position_gendarme.png" : "../../../images/icon/position_blanc.png"
                    fillMode: Image.PreserveAspectFit

                    anchors.centerIn: parent
                }
            }

            Rectangle {
                Layout.preferredWidth: 0.7 * root.width
                Layout.preferredHeight: (1/4)*root.height
                color: gendarme ? "royalBlue" : "limeGreen"

                Text {
                    text: "000km _ 00000 VILLE"
                    color: "white"
                    font.family: "Californian FB"
                    anchors.left: parent.left
                    padding: 0.5 * parent.height
                }
            }
        }
    }

/* Satisfaction */
    ColumnLayout {
        spacing: 0
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.2 * root.width
            color: gendarme ? "royalBlue" : "limeGreen"

            Rectangle {
                height: 0.40 * root.height
                width: 0.18 * root.width
                anchors.top: parent.verticalCenter
                border.width: 0.005 * (root.width + (1/2)*root.height)
                border.color: "SILVER"
                color: gendarme ? "royalBlue" : "limeGreen"

                Image {
                    width: parent.width
                    height: parent.height
                    source: satisfaction ? "../../../images/icon/smiley.png" : "../../../images/icon/smiley_sad.png"
                    fillMode: Image.PreserveAspectFit

                    anchors.centerIn: parent
                }
            }
        }
    }
}

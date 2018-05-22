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


    ColumnLayout {
        spacing: 0
        Layout.fillHeight: true
        Layout.fillWidth: true

        /*Customer Name */
        RowLayout {
            spacing: 0
            Layout.fillWidth: true
            Layout.preferredHeight: (1/2)*root.height

            visible: squad ? false : true

            Rectangle {
                Layout.preferredWidth: 0.1 * root.width
                Layout.preferredHeight: (1/2)*root.height
                color: "transparent"

                Image {
                    width: parent.width
                    height: parent.height
                    source: "../../../images/icon/infoClient.png"
                    fillMode: Image.PreserveAspectFit

                    anchors.centerIn: parent
                }
            }

            Rectangle {
                Layout.preferredWidth: 0.7 * root.width
                Layout.preferredHeight: (1/2)*root.height
                color: "transparent"

                TextBox {
                    text: clientPage.client_name
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
            Layout.preferredHeight: (1/2)*root.height

            visible: clientPage.squad ? true : false

            Rectangle {
                Layout.preferredWidth: 0.1 * root.width
                Layout.preferredHeight: (1/2)*root.height
                color: "transparent"

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
                Layout.preferredHeight: (1/2)*root.height
                color: "transparent"

                TextBox {
                    text: clientPage.squadName
                    color: "white"
                    anchors.centerIn: parent
                }
            }
        }

        /* Position */
        RowLayout {
            spacing: 0
            Layout.fillWidth: true
            Layout.preferredHeight: (1/2)*root.height

            Rectangle {
                Layout.preferredWidth: 0.1 * root.width
                Layout.preferredHeight: (1/2)*root.height
                color: "transparent"

                Image {
                    width: parent.width
                    height: parent.height
                    source: clientPage.squad ? "../../../images/icon/position_gendarme.png" : "../../../images/icon/position_blanc.png"
                    fillMode: Image.PreserveAspectFit

                    anchors.centerIn: parent
                }
            }

            Rectangle {
                Layout.preferredWidth: 0.7 * root.width
                Layout.preferredHeight: (1/2)*root.height
                color: "transparent"

                Text {
                    text: "000km _ 00000 VILLE" // a modifier
                    color: "white"
                    font.family: "Californian FB"
                    anchors.left: parent.left
                    padding: 0.5 * parent.height
                }
            }
        }
    }

    /* satisfactionClient */
    ColumnLayout {
        spacing: 0
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: 0.2 * root.width
            color: "transparent"

            Rectangle {
                height: 0.40 * root.height
                width: 0.18 * root.width
                anchors.centerIn: parent
                anchors.topMargin: (1/4)*root.height
                anchors.bottomMargin: (1/4)*root.height
                border.width: 0.005 * (root.width + (1/2)*root.height)
                border.color: "SILVER"
                color: "transparent"

                Image {
                    width: parent.width
                    height: parent.height
                    source: clientPage.client_satisfaction ? "../../../images/icon/smiley.png" : "../../../images/icon/smiley_sad.png"
                    fillMode: Image.PreserveAspectFit

                    anchors.centerIn: parent
                }
            }
        }
    }
}

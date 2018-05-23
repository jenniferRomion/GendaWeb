import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {
    property int page

    id : root

    anchors.fill : parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    /* Squad Name */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*root.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.preferredWidth: 0.1 * etat.width
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"

            Image {
                source: "../../../images/icon/gendflam.png"
                width: height
                height: 0.10 * etat.width
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.preferredWidth: 0.7 * etat.width
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"

            TextBox {
                text: clientPage.squadName
                bold : true
                color: "white"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.preferredWidth: 0.2 * etat.width
            Layout.fillHeight: true
            color: "transparent"
            opacity : page == 5 || page == 3 ? 1 : 0

            HeaderButtonReturn {
                id : returnBtn
                onClicked: {
                    if (page == 5)
                    {
                        clientPage.client5_visibility = false;
                        clientPage.client2_visibility = true;
                    }
                    else if (page == 3)
                    {
                        clientPage.client3_Squad_visibility = false;
                        clientPage.client4_Squad_visibility = true;
                    }
                    else
                        console.log("invalid command")

                }
            }
        }
    }


    /* Squad location */
    RowLayout {
        spacing: 0
        Layout.fillWidth: true
        Layout.preferredHeight: (1/2) * root.height


        Rectangle {
            Layout.preferredWidth: 0.1 * root.width
            Layout.fillHeight: true
            color: "transparent"

            Image {
                source: "../../../images/icon/marker.png"
                width: height
                height: 0.10 * etat.width
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.preferredWidth: 0.7 * root.width
            Layout.preferredHeight: (1/4)*root.height
            color: "transparent"

            TextBox {
                text: "000km _ 00000 VILLE" // a modifier
                color: "white"
                font.family: "Californian FB"
                font.pixelSize: Qt.application.font.pixelSize * 1.15
            }
        }
    }


}

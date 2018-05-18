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

        ColumnLayout {
            spacing : 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.80 * etat.width

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (1/16)*parent.height
                color: "lightGrey"

                TextBox {
                    text : "Mon profil"
                    bold : true
                    horizontalAlignment: Text.AlignLeft
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (1/16)*parent.height
                color: "lightGrey"

                UserPoints {
                    starSize : 0.03 * mainPage.height
                    starSrc: "../../../images/star.png"
                    backgroundColor : "lightGrey"
                }
            }
        }

        ColumnLayout {
            spacing : 0
            Layout.fillHeight: true
            Layout.preferredWidth: 0.20 * etat.width

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "lightGrey"

                HeaderButtonReturn {
                    anchors.centerIn: parent
                    onClicked: {
                        console.log("ok")
                        homePage.home3_visibility = false
                        homePage.home2_visibility = true
                    }
                }
            }
        }
    }


    /* info box */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (7/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"
        }
    }

}

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

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/4)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"

            TextBox {
                text : "Nom/logo de l'Application"
            }
        }
    }

    /* Welcome */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        ColumnLayout {
            spacing : 0.01 * etat.height
            //Layout.margins: 0.02 * etat.width
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (1/12)*etat.height
                //color: "lightGrey"

                TextBox {
                    anchors.centerIn: parent
                    italic: true

                    text : "Bienvenue " + "Commercial"
                }

            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (1/6)*etat.height
                //color: "red"

                Image {
                    anchors.centerIn: parent
                    height: (1/8) * mainPage.height
                    fillMode: Image.PreserveAspectFit

                    source : "../../../images/user1.png"
                }

            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (1/12)*etat.height
                //color: "lavender"

                UserPoints {
                    anchors.centerIn: parent
                    points: 4
                }
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
            //color: "lightBlue"

            MyButton {
                text : "Mon Profil"
                anchors.centerIn: parent
                width: (1/2) * etat.width
                height: (1/10) * etat.height

                onClicked: {
                    console.log("profil")
                    homePage.home2_visibility = false
                    homePage.home1_visibility = true
//                    homePage.home2_visibility = false
//                    homePage.home3_visibility = true
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
            color: "white"

            Logo {}
        }
    }


}

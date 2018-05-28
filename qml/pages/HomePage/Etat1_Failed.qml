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
        Layout.preferredHeight: (1/4) * etat.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"

            //            TextBox {
            //                text : "Nom/logo de l'Application"
            //            }
        }
    }

    /* Input */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3) * etat.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        ColumnLayout {
            spacing : 0.02 * etat.height
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (2/9) * etat.height
                //color: "lightGrey"

                Image {
                    anchors.centerIn: parent
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                    source: "../../../images/exclamation.png"
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (1/9) * etat.height
                //color: "red"

                TextBox {
                    width : 0.8 * etat.width
                    anchors.centerIn: parent
                    text: "Erreur d'authentification"
                }
            }

        }
    }


    /* Button */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/6) * etat.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: colorMajor

            MyButton {
                text : "Retour"
                anchors.centerIn: parent
                width: (1/2) * etat.width
                height: (1/10) * etat.height

                onClicked: {
                    homePage.home1_failed_visibility = false
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
            //color: colorMajor

            //            Logo {}
        }
    }


}

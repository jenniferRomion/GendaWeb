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

    /* Input */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        ColumnLayout {
            spacing : 0.02 * etat.height
            //Layout.margins: 0.02 * etat.width
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                //color: "lightGrey"

                InputBox {
                    id : username
                    placeholderText: "Entrer votre identifiant"

                    width : 0.8 * etat.width
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                //color: "red"

                InputBox {
                    id : password
                    placeholderText: "Entrer votre mot de passe"
                    echoMode: TextInput.Password

                    width : 0.8 * etat.width
                    anchors.top : parent.top
                    anchors.horizontalCenter: parent.horizontalCenter

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
                text : "Se connecter"
                anchors.centerIn: parent
                width: (1/2) * etat.width
                height: (1/10) * etat.height

                onClicked: {
                    console.log("connexion")
                    homePage.home1_visibility = false
                    homePage.home2_visibility = true
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

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

    /* Header */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillWidth: true
        z : 3

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.10 * etat.width
            color: colorMinor

            ShadowIcon {
                iconSrc: "../../../images/icon/clients.png"
                height: 0.05 * mainPage.height
                width: parent.width
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.70 * etat.width
            color: colorMinor

            TextBox {
                text : "Mes clients"
                bold : true
                horizontalAlignment: Text.AlignLeft
                leftPadding: 0.05 * parent.width
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.20 * etat.width
            color: colorMinor

            HeaderButtonUpdate {
                onClicked: {
                    console.log("Mise à jour de la liste client")
                }
            }
        }
    }

    /* ListView Clients */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.bottomMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (2/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        z : 0

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightgrey"

            MyList{
                id: listClients
//                onCurrentIndexChanged: console.log(idtemp.model.get(listClients.currentIndex).name)

                function f(){
                    clientPage.client_name = idModel.model.get(listClients.currentIndex).name;
                    clientPage.client_gendarme = idModel.model.get(listClients.currentIndex).gendarme;
                    clientPage.client_satisfaction = idModel.model.get(listClients.currentIndex).satisfaction;
                }

                model : DelegateClients {
                    id : idModel
                    view: listClients
                }
            }
        }
    }


    /* Buttons */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        //Layout.fillHeight: true
        Layout.fillWidth: true
        z : 3

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: colorMinor

            MyButton {
                text: "Détails"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked: {
                    listClients.f()
                    clientPage.client1_visibility = false;
                    clientPage.client2_visibility = true;
                }
            }
        }
    }


}

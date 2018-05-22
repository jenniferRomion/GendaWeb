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
        Layout.preferredHeight: (1/10)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightGrey"

            TextBox {
                text: "Mes clients"
                bold: true
                horizontalAlignment: Text.left
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (2/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightgrey"

            MyList{
                id: listClients
                model : DelegateClients {
                    view: listClients
                }
            }
        }
    }


    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/10)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            MyButton {
                text: "Détails"
                onClicked: {
                    console.log("Détails")
                    clientPage.client1_visibility = false;
                    clientPage.client2_visibility = true;
                }
                anchors.centerIn: parent
            }
        }
        // A virer
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            MyButton {
                text: "Type client"
                onClicked: {
                    if(clientPage.client_pm)
                        clientPage.client_pm = false
                    else
                        clientPage.client_pm = true

                    var typeClient = clientPage.client_pm ? "gendarme" : "civil"
                    console.log("Type client : " + typeClient)
                }
                anchors.centerIn: parent
            }
        }
    }

}

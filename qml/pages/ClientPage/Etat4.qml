import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : root

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/6)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: clientPage.squadClient ? "lightSkyBlue" : "limeGreen"

            LittleHeadCustomer {
                id: lHeadC
                anchors.fill: parent
                squad: clientPage.squadClient
                satisfactionClient: clientPage.client_happy
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/15)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            TextBox {
                text: "Pour quelle raison ne souhaitez-vous pas contacter ce client"
                font.pixelSize: Qt.application.font.pixelSize * 1.3
                horizontalAlignment: Text.left
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            MyList {
                id: listRaisons
                model : DelegateRaisons {
                    view: listRaisons
                }
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/15)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            MyButton {
                text: "Enregistrer"
                onClicked: {
                    console.log("Enregistrer")
                    clientPage.client4_visibility = false;
                    clientPage.client1_visibility = true;
                }
                anchors.centerIn: parent
            }
        }
    }
}

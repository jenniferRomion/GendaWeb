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
            color: "Cyan"

            LittleHeadCustomer{

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
            color: "Purple"

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
            color: "NAVAJOWHITE"

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
            color: "SEAGREEN"

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

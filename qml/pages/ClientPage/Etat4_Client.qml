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
        Layout.preferredHeight: (1/4)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: clientPage.client_gendarme ? colorGendarme : colorSimpleClient

            HeaderCustomer {
                page : 0
            }
        }
    }

    /* Label */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            TextBox {
                text: "Pour quelle raison ne souhaitez-vous pas contacter ce client ?"
                font.pixelSize: Qt.application.font.pixelSize * 1.3
                horizontalAlignment: Text.left
            }
        }
    }

    /* List of Reasons */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
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


    /* Button */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            MyButton {
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height
                text: "Enregistrer"

                onClicked: {
                    console.log("Enregistrer")
                    clientPage.client4_Client_visibility = false;
                    clientPage.client2_visibility = true;
                }
            }
        }
    }


}

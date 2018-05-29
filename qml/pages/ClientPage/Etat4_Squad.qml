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
        Layout.preferredHeight: (1/6)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: colorSquad

            HeaderSquad {
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
                text: "Pour quelle raison ne souhaitez-vous pas contacter cette gendarmerie ?"
                font.pixelSize: Qt.application.font.pixelSize * 1.3
                horizontalAlignment: Text.left
            }
        }
    }

    /* List of Reasons */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (7/12)*parent.height
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
            color: colorMinor

            MyButton {
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height
                text: "Enregistrer"

                onClicked: {
                    console.log("Enregistrer")
                    clientPage.client4_Squad_visibility = false;
                    clientPage.client5_visibility = true;
                }
            }
        }
    }


}

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
        Layout.preferredHeight: (1/6) * parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: colorSquad

            HeaderSquad {
            page: 5
            }
        }
    }


    /* Squad's datas */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (17/24) * parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightGrey"

            TextBox {
                text: "details"
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8) * parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightGrey"

            MyButton {
                text : "Contacter"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    clientPage.client5_visibility = false
                    clientPage.client3_Squad_visibility = true
                }
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightGrey"

            MyButton {
                text : "Visiter"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    //                    clientPage.client5_visibility = false;
                    //                    clientPage.client3_Squad_visibility = true;
                }
            }
        }
    }


}


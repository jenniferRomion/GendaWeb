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
                page : 3
            }
        }
    }

    /* Contact Actions */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (5/8) * parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        ColumnLayout {
            spacing: 0.02 * etat.height
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                //color: "green"

                ContactButton {
                    text : "Portable\n" + clientPage.client_mobile
                    width: 0.95 * etat.width
                    height : 1/6 * etat.height
                    anchors.centerIn: parent

                    onClicked: {
                        console.log("calling action")
                    }
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                //color: "green"

                ContactButton {
                    text : "Fix\n" + clientPage.client_phone
                    width: 0.95 * etat.width
                    height : 1/6 * etat.height
                    anchors.centerIn: parent

                    onClicked: {
                        console.log("calling action")
                    }
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                //color: "green"

                ContactButton {
                    text : "E-Mail\n" + clientPage.client_mail
                    width: 0.95 * etat.width
                    height : 1/6 * etat.height
                    anchors.centerIn: parent

                    onClicked: {
                        console.log("mailing action")
                    }
                }
            }

        }
    }


    /* Buttons */
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
                text : "Rendez-vous"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    console.log("Veuillez fixer votre rdv")
                    //                    clientPage.client3_Client_visibility = false;
                    //                    clientPage.client2_visibility = true;
                }
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: colorMinor

            MyButton {
                text : "Visiter"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    console.log("Nous préparons votre itinéraire")
                    //                    clientPage.client3_Client_visibility = false;
                    //                    clientPage.client2_visibility = true;
                }
            }
        }
    }


}

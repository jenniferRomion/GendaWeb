import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import "../../modules"
import "../../../images"


Popup {
    id : popup

    x : 0.025 * mainPage.width
    y : 1/4 * mainPage.height

    width: 0.95 * mainPage.width
    height: 2/5 * mainPage.height

    modal: true
    focus: true

    background: Rectangle {
        anchors.fill : parent
        //color : "red"

        ColumnLayout {

            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            spacing: 0


            /* Client's datas */
            RowLayout {
                spacing: 0
                Layout.preferredHeight: (2/3) * parent.height
                Layout.fillHeight: true
                Layout.fillWidth: true

                ColumnLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredWidth: (3/4) * popup.width
                    spacing: 0


                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        color: clientPage.client_gendarme ? colorGendarme : colorSimpleClient

                        TextBox {
                            text : clientPage.client_name.toUpperCase()
                            bold : true
                        }
                    }

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        color: clientPage.client_gendarme ? colorGendarme : colorSimpleClient

                        TextBox {
                            text : "informations clients (résumé)"
                        }
                    }
                }

                ColumnLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredWidth: (1/4) * popup.width

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        color: clientPage.client_gendarme ? colorGendarme : colorSimpleClient

                        Rectangle {
                            anchors.centerIn: parent
                            height: 0.15 * mainPage.width
                            width: height
                            border.width: 1
                            radius: 10
                            border.color: "#26282a"
                            color: clientPage.client_satisfaction ? "green" : "red"

                            Image {
                                source: clientPage.client_satisfaction ? "../../../images/icon/smiley.png" : "../../../images/icon/smiley_sad.png"
                                width: height
                                height: 0.10 * mainPage.width
                                fillMode: Image.PreserveAspectFit
                                anchors.centerIn: parent
                            }
                        }
                    }
                }
            }

            /* Buttons */
            RowLayout {
                spacing: 0
                Layout.preferredHeight: (1/3) * parent.height
                Layout.fillHeight: true
                Layout.fillWidth: true

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: colorMinor

                    MyButton {
                        text : "Voir fiche"
                        anchors.centerIn: parent
                        width: (1/3) * etat.width
                        height: (1/10) * etat.height

                        onClicked: {
                            console.log("Client : fiche ")
                            popup.close()
                            clientPage.client2_visibility = true
                        }
                    }
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: colorMinor

                    MyButton {
                        text : "Ajouter"
                        anchors.centerIn: parent
                        width: (1/3) * etat.width
                        height: (1/10) * etat.height

                        onClicked: {
                            console.log("map")
                            popup.close()
                        }
                    }
                }
            }

        }
    }


    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
}

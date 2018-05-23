import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import "../../modules"
import "../../../images"


Popup {
    id : popup

    x : 0.025 * mainPage.width
    y : 0.01 * mainPage.height

    width: 0.95 * mainPage.width
    height: 4/5 * mainPage.height

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


            /* Number of client */
            RowLayout {
                spacing: 0
                Layout.preferredHeight: (4/45) * mainPage.height
                Layout.fillWidth: true
                z: 3

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: colorMinor

                    TextBox {
                        text: "Clients à proximité (nb)"
                        bold: true
                    }
                }
            }

            /* Label */
            RowLayout {
                spacing: 0
                Layout.preferredHeight: (4/45) * mainPage.height
                Layout.fillWidth: true
                z: 3

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    //color: colorMinor

                    TextBox {
                        text : "Indiquez la raison de votre refus : "
                        font.pixelSize: Qt.application.font.pixelSize * 1.25
                        horizontalAlignment: Text.AlignLeft
                    }
                }
            }


            /* List of raisons */
            RowLayout {
                spacing: 0
                Layout.preferredHeight: (31/45) * parent.height
                Layout.fillHeight: true
                Layout.fillWidth: true
                z: 0


                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    //color: "red"

                    MyList {
                        id: listRaisons

                        function f(){
                            var NotificationRejection = idModel.model.get(listRaisons.currentIndex).textRaison;
                            console.log(NotificationRejection)
                        }

                        model : DelegateRaisons {
                            id : idModel
                            view: listRaisons
                        }
                    }
                }
            }


            /* Buttons */
            RowLayout {
                spacing: 0
                Layout.preferredHeight: (2/15) * mainPage.height
                Layout.fillWidth: true
                z: 3

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: colorMinor

                    MyButton {
                        text : "Valider"
                        anchors.centerIn: parent
                        width: (1/3) * etat.width
                        height: (1/10) * etat.height

                        onClicked: {
                            listRaisons.f();
                            popup.close()
                        }
                    }
                }
            }

        }
    }


    closePolicy: Popup.NoAutoClose
}

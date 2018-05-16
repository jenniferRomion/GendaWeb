import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/4)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"

            LittleHeadCustomer {

            }

        }
    }


    ColumnLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true


        Rectangle {
            width: parent.width
            height: (1/5) * parent.height

            MyButton {
                text: "Portable\n 06 88 56 44 25"
                onClicked: {
                    console.log("Portable")
                }
            }
        }

        Rectangle {
            width: parent.width
            height: (1/5) * parent.height

            MyButton {
                text: "Fixe\n 05 11 56 44 25"
                onClicked: {
                    console.log("Fixe")
                }
            }
        }

        Rectangle {
            width: parent.width
            height: (1/5) * parent.height

            MyButton {
                text: "Mail\n user@wandoo.fr"
                onClicked: {
                    console.log("Mail")
                }
            }
        }
    }

    Rectangle {
        width: parent.width
        height: (1/5)*parent.height

        RowTypeButton {
            srcLeftIcon: "../../images/icon/back.png"
            onLeftClicked: {
                console.log("Vous retournez en arrière")

            }

            textMiddleButton: "Visiter"
            onMiddleClicked: {
                console.log("Nous préparons votre itinéraire")
            }

            textRightButton: "Rdv"
            onRightClicked: {
                console.log("Veuillez fixer votre rdv")
            }
        }
    }

}

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
        Layout.preferredHeight: (1/4)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"

            HeadCust {
                id: headC
                width : etat.width
                gendarme: true
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (5/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightGrey"

            Text {
                width: parent
                height: parent
                anchors.centerIn: parent

                text: "Some details"
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightGrey"


            RowTypeButton {
                srcLeftIcon: "../../images/icon/back.png"
                onLeftClicked: {
                    console.log("BACK")
                }

                textMiddleButton: "Visiter"
                onMiddleClicked: {
                    console.log("Visiter")
                    headC.gendarme = false;
                }

                textRightButton: "Ignorer"
                onRightClicked: {
                    console.log("Ignorer")
                    headC.gendarme = true
                }
            }
        }
    }
}

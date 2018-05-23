import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import QtWebView 1.1

import "../../modules"
import "../../../images"

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    spacing: 0


    RowLayout {
        spacing: 0
        Layout.preferredHeight: parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: red

            MyMap {

                MyButton {
                    text : "test"
                    width: (1/3) * etat.width
                    height: (1/10) * etat.height
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    onClicked : {
                        notification.open();
                    }

                }
            }
        }
    }


    PopupInfo {id : popup}
    PopupNotification {id : notification}
    PopupRejection { id : raisons}
}

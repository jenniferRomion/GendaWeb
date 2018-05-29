import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1


import "../../modules"

Button {
    property string title: "parametre"
    property string iconsrc : "../../../images/icon/config.png"

    id: control
    font.pixelSize: Qt.application.font.pixelSize * 1.25
    font.family: "acumin-pro"

    background: RowLayout {

        spacing: 0
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: (1/10)*parent.width
            color: control.pressed ? "#C6AF90" : "white"

            ShadowIcon {
                iconSrc: iconsrc
                height: 0.05 * mainPage.height
                width: parent.width
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: (9/10)*parent.width
            color: control.pressed ? "#C6AF90" : "white"

            TextBox {
                text : title
                bold : true
                horizontalAlignment: Text.AlignLeft
                leftPadding: 0.05 * parent.width
            }
        }
    }
}

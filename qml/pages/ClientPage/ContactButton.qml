import QtQuick 2.7
import QtQuick.Controls 2.2

Button {
    property string btnColor : clientPage.client_gendarme ? colorGendarmeMinor : colorSimpleClientMinor

    id: control

    font.pixelSize: Qt.application.font.pixelSize * 1.25
    font.family: "acumin-pro"

    anchors.centerIn: parent

    width: 0.95 * mainPage.width
    height: (1/8) * mainPage.height


    background: Rectangle {
        id : back
        radius: 10
        color : btnColor
    }
}

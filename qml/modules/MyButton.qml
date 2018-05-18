import QtQuick 2.7
import QtQuick.Controls 2.2

Button {
    property string srcIcon : ""

    id: control
    font.pixelSize: Qt.application.font.pixelSize * 1.25
    font.family: "acumin-pro"

    background: Rectangle {

        border.color: "#26282a"
        border.width: 1
        radius: 4

        Image {
            z : 3
            anchors.centerIn: parent
            source: srcIcon

            height: parent.height
            fillMode: Image.PreserveAspectFit
        }


        gradient: Gradient {
            GradientStop { position: 0 ; color: control.pressed ? "#C6AF90" : "#EDECE0" }
            GradientStop { position: 1 ; color: control.pressed ? "#EDECE0" : "#C6AF90" }
            GradientStop { position: 0 ; color: control.pressed ? colorMajor : colorMinor }
            GradientStop { position: 1 ; color: control.pressed ? colorMinor : colorMajor }
        }
    }
}

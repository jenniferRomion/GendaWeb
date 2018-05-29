import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0


Button {
    property string srcIcon : ""

    id: control
    font.pixelSize: Qt.application.font.pixelSize * 1.25
    font.family: "acumin-pro"

    background: Rectangle {
        id: bg

        border.color: "#26282a"
        border.width: 1
        radius: control.height / 2.5
        antialiasing: true

        Image {
            z : 3
            anchors.centerIn: parent
            source: srcIcon

            height: parent.height
            fillMode: Image.PreserveAspectFit
        }


        gradient: Gradient {
            GradientStop { position: 0 ; color: control.pressed ? colorMajor : colorMinor }
            GradientStop { position: 1 ; color: control.pressed ? colorMinor : colorMajor }
        }
    }

    DropShadow {
        anchors.fill : bg
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: bg
    }

}

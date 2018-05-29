import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Button {
    id: control
    anchors.centerIn: parent
    height: 0.8 * parent.height
    width: height

    background: Rectangle {
        id: bg
        radius : parent.width

        border.color: "white"
        border.width: 2

        color : colorMajor

        gradient: Gradient {
            GradientStop { position: 0 ; color: colorMinor }
            GradientStop { position: 1 ; color: colorMajor }
        }


        Image {
            anchors.centerIn: parent
            source : "../../../images/icon/chevron.png"
            height: 0.6 * control.height
            fillMode: Image.PreserveAspectFit
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

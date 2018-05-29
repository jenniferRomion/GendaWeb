import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0


TabButton {

    property int index : 0
    property string imgsource : ""

    background: Rectangle {
        color : root.currentIndex == index ? "white" : colorMajor
        gradient: Gradient {
            GradientStop { position: 0 ; color: root.currentIndex == index ? "white" : colorMinor }
            GradientStop { position: 1 ; color: root.currentIndex == index ? "white" : colorMajor }
        }
    }

    Image {
        id: img
        source: imgsource

        height: (1/10) * mainPage.height
        width : parent.width
        fillMode: Image.PreserveAspectFit

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

    }

    DropShadow {
        anchors.fill : img
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: img
    }
}

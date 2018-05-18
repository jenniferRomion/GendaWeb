import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

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
        source: imgsource

        height: (1/10) * mainPage.height
        width : parent.width
        fillMode: Image.PreserveAspectFit

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

    }
}

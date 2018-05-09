import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

TabButton {

    property int index : 0
    property string imgsource : ""

    background: Rectangle { color : root.currentIndex == index ? "grey" : "white" }
    Image {
        source: imgsource

        height: (1/10) * mainPage.height
        width : parent.width
        fillMode: Image.PreserveAspectFit

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

    }
}

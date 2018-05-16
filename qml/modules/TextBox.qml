import QtQuick 2.9
import QtQuick.Controls 2.2



    Text {
        property bool bold : false
        property bool underline: false


        text : title

        font.family: "Californian FB"
        font.pixelSize: Qt.application.font.pixelSize * 1.5
        font.bold : bold
        font.underline: underline
        color : "black"

        width: parent.width
        wrapMode: Text.Wrap


        leftPadding: 0.01 * parent.width
        horizontalAlignment: Text.Center

        anchors.verticalCenter: parent.verticalCenter

    }

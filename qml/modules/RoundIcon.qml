import QtQuick 2.0

Rectangle {
    property int iSize
    property alias icolor: background.color
    property alias iImage: image.source

    height : iSize
    width: height
    radius: height / 2

    color: "white"

    Rectangle {
        id: background

        anchors.centerIn: parent

        height : iSize - (1/10 * iSize)
        width: height
        radius: height / 2

        border.color: "grey"
        border.width: 1

        Image {
            id: image

            anchors.centerIn: parent

            height: sourceSize.height > sourceSize.width ? parent.height - (0.01 * parent.height) : width
            width : sourceSize.height > sourceSize.width - (0.01 * parent.width) ? height : parent.width

            fillMode: Image.PreserveAspectFit

        }
    }

}

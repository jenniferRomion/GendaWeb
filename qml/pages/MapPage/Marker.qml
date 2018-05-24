import QtQuick 2.0
import QtQuick.Window 2.0
import QtLocation 5.6
import QtPositioning 5.5


MapQuickItem {
    property string value
    signal activated

    id: marker

    anchorPoint.x: image.width/4
    anchorPoint.y: image.height

    sourceItem: Image {
        id: image
        source: "../../../images/map_icons/marker.png"
    }

    MouseArea {
        id: mouseArea
        anchors.fill : parent

        onClicked: activated()
    }

}

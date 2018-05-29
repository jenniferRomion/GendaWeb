import QtQuick 2.0
import QtGraphicalEffects 1.0


Item {
    property string iconSrc

    Image {
        id: img
        anchors.centerIn: parent
        source : iconSrc
        height: sourceSize.height > sourceSize.width ? parent.height : width
        width : sourceSize.height > sourceSize.width ? height : parent.width
        fillMode: Image.PreserveAspectFit
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

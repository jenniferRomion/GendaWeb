import QtQuick 2.7
import QtQuick.Controls 2.2

Button {
    id: control

    background: Rectangle {

        color : "transparent"

        Image {
            source: "../../images/icon/delete.png"
            height: 0.8 * parent.height
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }
}

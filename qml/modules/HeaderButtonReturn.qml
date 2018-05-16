import QtQuick 2.7
import QtQuick.Controls 2.2

Button {
    id: control
    anchors.fill : parent

    background: Rectangle {

        color : "transparent"

        Image {
            anchors.centerIn: parent
            source : "../../../images/icon/arrow_return.png"
            height: 0.10 * etat.width
            fillMode: Image.PreserveAspectFit
        }
    }
}

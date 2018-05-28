import QtQuick 2.0
import "../../modules"

Rectangle {
    id : myListView

    Component {
        id: idDelegate

        Item {
            id: idItem
            anchors { left: parent.left; right: parent.right }
            height: 1/16 * mainPage.height

            Row {
                id: row
                anchors { fill: parent; margins: 0.01 * parent.width }

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width
                    text: name
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1.25

                    MouseArea {
                        anchors.fill: parent
                        onClicked: idListView.currentIndex = index
                    }
                }
            }
        }
    }

    ListView {
        id : idListView
        anchors { fill: parent; margins: 2 }

        model : RingModel {}
        delegate: idDelegate

        highlight: Rectangle { color: colorMajor ; radius : 20 }
        focus: true
        onCurrentItemChanged: {
            //console.log(model.get(idListView.currentIndex).name)
            newRingSrc = model.get(idListView.currentIndex).src
        }

        spacing: 4
    }



}

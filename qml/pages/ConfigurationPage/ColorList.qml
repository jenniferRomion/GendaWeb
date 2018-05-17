import QtQuick 2.0
import "../../modules"

Rectangle {
    id : myListView

    Component {
        id: idDelegate

        Item {
            id: idItem
            anchors { left: parent.left; right: parent.right }
            height: row.implicitHeight + 0.01 * mainPage.height

            Row {
                id: row
                anchors { fill: parent; margins: 0.01 * parent.width }

                Text {
                    width: 0.9 * parent.width
                    text: name
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1.25

                    MouseArea {
                        anchors.fill: parent
                        onClicked: idListView.currentIndex = index
                    }

                }

                Image {
                    height: parent.height
                    width: 0.1 * parent.width
                    source : src
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }

    ListView {
        id : idListView
        anchors { fill: parent; margins: 2 }

        model : ColorModel {}
        delegate: idDelegate

        highlight: Rectangle { color: colorMajor ; radius : 4 }
        focus: true
        onCurrentItemChanged: {
            //console.log(model.get(idListView.currentIndex).name)
            newMajorSrc = model.get(idListView.currentIndex).major
            newMinorSrc = model.get(idListView.currentIndex).minor
            colorPicker = model.get(idListView.currentIndex).src
        }


        spacing: 4
    }



}

import QtQuick 2.0

Rectangle {
    id : myListView

    ListModel {
        id: leModel
        ListElement {
            nomClient : ""
            contactClient : ""
            produit : ""
            lieuProduit : ""
            satisfactionClient : ""
        }
    }

    Component {

        id: delegateComponent

        Item {

            anchors {
                left: parent.left;
                right: parent.right
            }
            height: column.implicitHeight + 4

            Column {
                id: column
                anchors {
                    fill: parent
                    margins: 2
                }

                Text {
                    text: "some"
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1.5
                }

                Text {
                    text: "any"
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: view.currentIndex = index
            }
        }
    }

    ListView {
        id : view
        anchors { fill: parent; margins: 2 }

        delegate: delegateComponent
        model: MyModel{

        }

        highlight: Rectangle { color: 'blue' ; radius : 4 }
        focus: true
        onCurrentItemChanged: {

        }

        spacing: 4
    }
}


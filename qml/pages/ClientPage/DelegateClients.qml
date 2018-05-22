import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import QtQml.Models 2.2

DelegateModel {

    model: ModelClients {}

    property ListView view

    delegate: Component {

        Item {
            width: parent.width
            //height: row.implicitHeight + 0.01 * mainPage.height
            height: 1/16 * mainPage.height

            Row {
                id: row
                anchors { fill: parent; margins: 0.01 * parent.width }


                Image {
                    source: gendarme ? "../../../images/icon/gendarme.png" : "../../../images/icon/user.png"
                    height: parent.height
                    width: 0.1 * parent.width
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: client
                    width: 0.8 * parent.width
                    text: name
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1.25
                    anchors.verticalCenter: parent.verticalCenter
                }

                Image {
                    source: satisfaction ? "../../../images/icon/smiley_green.png" : "../../../images/icon/smiley_red.png"
                    fillMode: Image.PreserveAspectFit
                    height: parent.height
                    width: 0.1 * parent.width
                }
            }

            MouseArea {
                id : mouseDelegate
                anchors.fill: parent
                onClicked: {
                    view.currentIndex = index
                }
            }

        }
    }

}

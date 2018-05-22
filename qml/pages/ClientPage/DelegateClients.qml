import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import QtQml.Models 2.2

DelegateModel {

    model: ModelClients{}

    property ListView view

    delegate: Component {

        Item {
            width: parent.width
            height: row.implicitHeight + 0.01 * mainPage.height

            Row {
                id: row
                anchors { fill: parent; margins: 0.01 * parent.width }


                Image {
                    source: gendarme ? "../../../images/icon/gendarme.png" : "../../../images/icon/infoClient.png"
                    height: parent.height
                    width: 0.1 * parent.width
                    fillMode: Image.PreserveAspectFit
                }

                TextBox {
                    id: client
                    width: 0.8 * parent.width
                    text: nomClient
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1.25
                }

                Image {
                    source: satisfaction ? "../../../images/icon/smiley.png" : "../../../images/icon/smiley_sad.png"
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

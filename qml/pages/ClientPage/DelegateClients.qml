import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtQml.Models 2.2

import "../../modules"

DelegateModel {

    model: ModelClients {}

    property ListView view

    delegate: Component {

        Item {
            width: parent.width
            height: 1/16 * mainPage.height

            Row {
                id: row
                anchors { fill: parent; margins: 0.01 * parent.width }

                ShadowIcon {
                    iconSrc: gendarme ? "../../../images/icon/gendarme.png" : "../../../images/icon/user.png"
                    height: parent.height
                    width: 0.1 * parent.width

                }

                Text {
                    id: client
                    width: 0.8 * parent.width
                    text: name
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1.25
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: 0.05 * parent.width
                }

                RoundIcon {
                    anchors.verticalCenter: parent.verticalCenter
                    iSize: 0.1 * parent.width
                    iImage: satisfaction ? "../../../images/icon/smiley.png" : "../../../images/icon/smiley_sad.png"
                    icolor: satisfaction ? "green" : "red"
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

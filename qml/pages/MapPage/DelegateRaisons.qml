import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import QtQml.Models 2.2

DelegateModel {
    id: delegateRaisons

    model: RaisonsModel{}

    property ListView view

    delegate: Component {

        Item {
            width: parent.width
            height: 2.5 * raison.height

            Row {
                width: raison.width
                anchors.centerIn: parent

                TextBox {
                    id: raison
                    text: textRaison
                    font.pixelSize: Qt.application.font.pixelSize * 1.5
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

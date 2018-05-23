import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import QtQml.Models 2.2

DelegateModel {

    model: ModelNavigation {}

    property ListView view

    delegate: Component {

        Item {
            width: parent.width
            height: 0.1 * mainPage.height

            RowLayout {
                Layout.fillHeight: true
                Layout.fillWidth: true

                spacing: 0

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredWidth: 0.1 * mainPage.width
                    color: "transparent"

                    Image {
                        width: height
                        height: 0.05 * mainPage.height
                        source: srcIcon
                        fillMode: Image.PreserveAspectFit

                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredWidth: 0.9 * mainPage.width
                    color: "transparent"

                    TextBox {
                        text: textNav
                        horizontalAlignment: Text.AlignLeft
                        font.pixelSize: Qt.application.font.pixelSize * 1.2
                    }
                }
            }
        }
    }
}

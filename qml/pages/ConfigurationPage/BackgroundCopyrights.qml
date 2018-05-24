import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

Rectangle {
    id: root

    Image {
        anchors.fill: parent
        source: "../../../images/black-background.jpg"
    }

    Flickable {
        anchors.fill: parent
        contentWidth: root.width
        contentHeight: 1.5 * root.height
        clip: true

        ColumnLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.fill: parent
            anchors.margins: 0.04 * root.height

            spacing: 0

            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: (1/10) * root.height
                spacing: 0

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    TextBox {
                        text: "À propos de\n GENDAWEB"
                        bold: true
                        color: colorMajor
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: (1/10) * root.height
                spacing: 0

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "../../../images/logo_clconseils.png"
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: (1/5) * root.height
                spacing: 0

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    TextBox {
                        text: "Cette application a été réalisée avec QtCreator\n Développée par\n Jennifer ROMION\n et\n Jérémie SOUSSANA\n Pour ClConseils"
                        bold: true
                        color: colorMajor
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: (1/10) * root.height
                spacing: (1/16) * parent.width

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "../../../images/icon/Qt_Creator.png"
                    }
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "../../../images/user1.png"
                    }
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "../../../images/user2.png"
                    }
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit
                        source: "../../../images/icon/afpa.png"
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: (1/5) * root.height
                spacing: 0

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height
                    color: "transparent"

                    TextBox {
                        text: "All rights reserved"
                        bold: true
                        color: colorMinor
                    }
                }
            }
        }
    }
}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"
import QtQml.Models 2.2

DelegateModel {

    model: ModelItinerary {}

    property ListView view

    delegate: Component {

        Item {
            id : root
            width: parent.width
            height: 1/6 * mainPage.height
            //anchors.horizontalCenter: mainPage.horizontalCenter

            MouseArea {
                id : mouseDelegate
                anchors.fill: parent
                onClicked: {
                    view.currentIndex = index
                }
            }

            ColumnLayout {
                id: column

                anchors.centerIn: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: root.height

                Layout.leftMargin: 0.005 * mainPage.height
                Layout.rightMargin: 0.005 * mainPage.height

                spacing : 0

                /* icon & label & time */
                RowLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: (1/2) * root.height

                    spacing: 0

                    Rectangle {
                        id: carIcon
                        Layout.fillHeight: true
                        Layout.preferredWidth: 0.2 * root.width
                        color: "transparent"

                        ShadowIcon {
                            iconSrc: "../../../images/icon/car.png"
                            height: 0.05 * mainPage.height
                            width: height
                            anchors.centerIn: parent
                        }
                    }

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.preferredWidth: 0.4 * root.width
                        color: "transparent"

                        TextBox {
                            id: itineraryChoice
                            text : "Via " + road
                            horizontalAlignment: Text.left
                            leftPadding: 0.05 * parent.width
                            bold: true
                        }
                    }

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 0.4 * root.width
                        color: "transparent"

                        TextBox {
                            text : time + " min"
                            horizontalAlignment: Text.AlignRight
                            rightPadding: 0.05 * parent.width
                        }
                    }
                }

                /* nb of clients & distance */
                RowLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: (1/2) * root.height

                    spacing: 0

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 0.7 * root.width
                        color: "transparent"

                        TextBox {
                            text : clients + " client(s) sur le trajet"
                            color: "red"
                            horizontalAlignment: Text.left
                            leftPadding: 0.05 * parent.width
                        }
                    }

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 0.3 * root.width
                        color: "transparent"

                        TextBox {
                            text : distance + " km"
                            horizontalAlignment: Text.AlignRight
                            rightPadding: 0.05 * parent.width
                        }
                    }
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: 0.005 * mainPage.height
                    color: "darkgrey"
                }

            }
        }
    }
}

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

            MouseArea {
                id : mouseDelegate
                anchors.fill: parent
                onClicked: {
                    view.currentIndex = index
                }
            }

            ColumnLayout {
                id: column

                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: root.height

                spacing: 0.02 * mainPage.height

                RowLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: (1/2) * root.height
                    Layout.leftMargin: 0.005 * mainPage.height
                    Layout.rightMargin: 0.005 * mainPage.height
                    //Layout.preferredWidth:  root.width

                    spacing: 0

                    Rectangle {
                        id: carIcon
                        Layout.fillHeight: true
                        Layout.preferredWidth: 0.2 * root.width
                        color: "transparent"

                        Image {
                            width: height
                            height: 0.05 * mainPage.height
                            source: "../../../images/icon/car.png"
                            fillMode: Image.PreserveAspectFit

                            anchors.centerIn: parent
                        }
                    }

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.preferredWidth: 0.3 * root.width
                        anchors.left: carIcon.right
                        color: "transparent"

                        TextBox {
                            id: itineraryChoice
                            text : "Via " + road
                            horizontalAlignment: Text.left
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
                            color: "limegreen"

                        }
                    }
                }

                RowLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: (1/2) * root.height
                    //Layout.preferredWidth:  root.width

                    spacing: 0

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 0.6 * root.width
                        color: "transparent"

                        TextBox {
                            text : clients + " clients sur le trajet"
                            color: "red"
                        }
                    }

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        Layout.preferredWidth: 0.3 * root.width
                        anchors.right: parent.right
                        color: "transparent"

                        TextBox {
                            text : distance + " km"
                            horizontalAlignment: Text.AlignRight
                            color: "black"
                        }
                    }
                }
            }
        }
    }
}

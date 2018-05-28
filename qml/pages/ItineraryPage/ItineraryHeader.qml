import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

RowLayout {
    id : header

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    ColumnLayout {
        spacing: 0
        Layout.preferredWidth: 0.8 * mainPage.width
        Layout.fillHeight: true
        Layout.fillWidth: true

        //address from
        RowLayout {
            spacing: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: (1/2) * header.height


            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 0.10 * mainPage.width
                color: "transparent"

                Image {
                    anchors.centerIn: parent
                    source : "../../../images/icon/circle.png"
                    height: 0.05 * mainPage.height
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 0.70 * mainPage.width
                color: "transparent"

                TextBox {
                    text : addresseFrom
                    font.pixelSize: Qt.application.font.pixelSize * 1.25
                    bold : true
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }

    // address to
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.10 * mainPage.width
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source : "../../../images/icon/marker.png"
                height: 0.05 * mainPage.height
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.70 * mainPage.width
            color: "transparent"

            TextBox {
                text : addresseTo
                font.pixelSize: Qt.application.font.pixelSize * 1.25
                bold : true
                horizontalAlignment: Text.AlignLeft
            }
        }
    }
    }

    //button return
    ColumnLayout {
        spacing: 0
        Layout.preferredWidth: 0.2 * mainPage.width
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"

            HeaderButtonReturn {
                onClicked: {
                    if(itineraryPage.itinerary3_visibility ){
                        itineraryPage.itinerary3_visibility = false
                        itineraryPage.itinerary2_visibility = true
                    }

                    else if(itineraryPage.itinerary4_visibility ){
                        itineraryPage.itinerary4_visibility = false
                        itineraryPage.itinerary3_visibility = true
                    }
                }
            }
        }
    }

}

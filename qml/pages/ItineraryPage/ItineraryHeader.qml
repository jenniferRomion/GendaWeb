import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : header

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.topMargin: 0.01 * mainPage.height

    spacing: 0

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2) * parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: (1/10) * mainPage.width
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source : "../../../images/icon/circle.png"
                height: 0.10 * etat.width
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: (9/10) * mainPage.width
            color: "transparent"

            TextBox {
                text : addresseFrom
                font.pixelSize: Qt.application.font.pixelSize * 1.25
                bold : true
                horizontalAlignment: Text.AlignLeft
            }
        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: (1/10) * mainPage.width
            color: "transparent"

            Image {
                anchors.centerIn: parent
                source : "../../../images/icon/marker.png"
                height: 0.10 * etat.width
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: (9/10) * mainPage.width
            color: "transparent"

            TextBox {
                text : addresseTo
                font.pixelSize: Qt.application.font.pixelSize * 1.25
                bold : true
                horizontalAlignment: Text.AlignLeft
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.20 * etat.width
            color: colorMinor

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

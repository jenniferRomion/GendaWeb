import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/6)*parent.height
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: colorMinor

            ItineraryHeader {}
        }
    }


    RowLayout {
        spacing: 0
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredHeight: (1/8) * mainPage.height

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightBlue"

        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightGrey"

            MyButton {
                text : "temp" // réinitialiser ?
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    itineraryPage.itinerary1_visibility = false
                    itineraryPage.itinerary2_visibility = true
                }
            }

        }
    }




}

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

    /* space filler */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (3/7)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "white"
        }
    }


    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/7)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightGrey"

            MyButton {
                text : "Nouvelle Destination"
                anchors.centerIn: parent
                width: (9/10) * etat.width
                height: parent.height

                onClicked : {
                    itineraryPage.itinerary1_visibility = false
                    itineraryPage.itinerary2_visibility = true
                }
            }

        }
    }

    /* space filler */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (3/7)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightBlue"
        }
    }

}

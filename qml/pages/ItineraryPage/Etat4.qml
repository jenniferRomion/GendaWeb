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

    /* header */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        z: 3

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: colorMinor

            ItineraryHeader {}
        }
    }

    /* itinerary general informations */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*etat.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        z: 3

        Rectangle {
            id: details
            Layout.fillHeight: true
            Layout.fillWidth: true

            ItinenaryDetails {}
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredHeight: 0.005 * etat.height
        color: "darkgrey"
    }

/* instructions */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (3/4)*etat.height
        Layout.fillWidth: true
        z: 0

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
//            color: colorMinor


            MyList{
                id: listNavigation
                withHighlight: false

                model : DelegateNavigation {
                    id: idNavigation
                    view: listNavigation
                }
            }
        }
    }



}

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

    spacing: 0.05 * mainPage.height

    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)* parent.height
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
        Layout.preferredHeight: (3/4)* mainPage.height

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true

            MyList{
                id: listItineraries

                function f(){
                    itineraryPage.roadSelected = idItenerary.model.get(listItineraries.currentIndex).road;
                    itineraryPage.timeItinerary = idItenerary.model.get(listItineraries.currentIndex).time;
                    itineraryPage.numberClients = idItenerary.model.get(listItineraries.currentIndex).clients;
                    itineraryPage.distanceItineray = idItenerary.model.get(listItineraries.currentIndex).distance;
                }

                model : DelegateItineraries {
                    id: idItenerary
                    view: listItineraries                   
                }
            }
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
                text : "Sélectionner" // réinitialiser ?
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/8) * etat.height

                onClicked : {
                    listItineraries.f();
                    itineraryPage.itinerary3_visibility = false
                    itineraryPage.itinerary4_visibility = true
                }
            }
        }


    }
}

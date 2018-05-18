import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"
import "ItineraryPage"

Page {
    id : itineraryPage

    property bool itinerary1_visibility: true
    property bool itinerary2_visibility: false
    property bool itinerary3_visibility: false
    property bool itinerary4_visibility: false



//    header: Label {
//        text: qsTr("Itinéraire")
//        font.pixelSize: Qt.application.font.pixelSize * 2
//        font.family: "acumin-pro"
//        padding: 10
//    }

        Etat1 {
            id : etat1
            visible: itinerary1_visibility
        }

        Etat2 {
            id : etat2
            visible: itinerary2_visibility
        }

        Etat3 {
            id : etat3
            visible: itinerary3_visibility
        }

        Etat4 {
            id : etat4
            visible: itinerary4_visibility
        }

}



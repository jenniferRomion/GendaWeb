import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"
import "CalendarPage"

Page {
    id : calendarPage

    property bool calendar1_visibility: true
    property bool calendar2_visibility: false
    property string clientName :""
    property string clientRdv : ""
    property string rdvTime : "00:00"
    property var currentDate : new Date()



//    header: Label {
//        text: qsTr("Planning")
//        font.pixelSize: Qt.application.font.pixelSize * 2
//        font.family: "acumin-pro"
//        padding: 10
//    }

    Etat1 {
        id : etat1
        visible: calendar1_visibility
    }

    Etat2 {
        id : etat2
        visible: calendar2_visibility
    }






}

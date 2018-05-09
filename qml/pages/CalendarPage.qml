import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"
import "CalendarPage"

Page {
    id : calendarPage

    property bool calendar_visibility: true


    header: Label {
        text: qsTr("Planning")
        font.pixelSize: Qt.application.font.pixelSize * 2
        font.family: "acumin-pro"
        padding: 10
    }

    Etat1 {
        id : etat1
        visible: calendar_visibility
    }

    Etat3 {
        id : etat2
        visible: false
    }






}

import QtQuick 2.0

/* module temporaire avant liaison avec BDD */

ListModel {
    id: libraryModel
    ListElement {
        time: "09:00"
        name: "BOYER Alexandre"
        rdv: "R2"
        gendarme: false
    }
    ListElement {
        time: "17:00"
        name: "WEBER Quentin"
        rdv: "R1"
        gendarme: true
    }
    ListElement {
        time: "19:00"
        name: "BELSON Guy"
        rdv: "SAV"
        gendarme: false
    }
}

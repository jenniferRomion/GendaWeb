import QtQuick 2.0

ListModel {
    id: libraryModel
    ListElement {
        name: "Bruit d'oiseau"
        src: "../../../sounds/oiseau.wav"
    }
    ListElement {
        name: "Bruit du ressort"
        src: "../../../sounds/ressort.wav"
    }
    ListElement {
        name: "Buzzer"
        src: "../../../sounds/buzzer.wav"
    }
    ListElement {
        name: "Ding dong"
        src: "../../../sounds/ding_dong.wav"
    }

}

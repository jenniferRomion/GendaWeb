import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ListModel {
    id: model

    ListElement {
        name : "Belson Guy";
        satisfaction : true;
        gendarme: false
    }
    ListElement {
        name : "Dupont Jacques";
        satisfaction : false;
        gendarme: true
    }
    ListElement {
        name : "Bertrand Vanina";
        satisfaction : true;
        gendarme: true
    }
    ListElement {
        name : "Dupond Valentin";
        satisfaction : true;
        gendarme: false
    }
    ListElement {
        name : "Pantin Amine";
        satisfaction : true;
        gendarme: true
    }
    ListElement {
        name : "Balot Jeremy";
        satisfaction : false;
        gendarme: false
    }
    ListElement {
        name : "Amande Amandine";
        satisfaction : true;
        gendarme: true
    }
    ListElement {
        name : "Caramel Gilbert";
        satisfaction : true;
        gendarme: true
    }
    ListElement {
        name : "Finito Sheldon";
        satisfaction : true;
        gendarme: false
    }
    ListElement {
        name : "DelToro Guillermo";
        satisfaction : false;
        gendarme: false
    }
}

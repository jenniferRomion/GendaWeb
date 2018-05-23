import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ListModel {
    id: modelRaisons
    ListElement { textRaison: "Autres" }
    ListElement { textRaison: "Pas le temps" }
    ListElement { textRaison: "Pas intéressé" }
    ListElement { textRaison: "Trop loin" }
    ListElement { textRaison: "Qualité" }
}

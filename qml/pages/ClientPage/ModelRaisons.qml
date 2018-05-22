import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ListModel {
    id: modelRaisons
    ListElement { textRaison: "Client indisponible" }
    ListElement { textRaison: "Client injoignable" }
    ListElement { textRaison: "Client désintéressé" }
}

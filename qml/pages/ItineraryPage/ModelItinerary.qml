import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ListModel {

    id: modelItinerary

    ListElement { road : "D17"; time : 44; clients: 3; distance: 38.3}
    ListElement { road : "A709"; time : 48; clients: 9; distance: 47.9}
    ListElement { road : "D986"; time : 56; clients: 12; distance: 51.1}
}

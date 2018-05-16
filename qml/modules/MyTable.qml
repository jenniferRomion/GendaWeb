import QtQuick 2.0
import QtQuick.Controls 1.4


Rectangle {
    width: parent.width
    height: parent.height

    property bool scrollV: table.__verticalScrollBar
    property bool scrollH: table.__horizontalScrollBar

    TableView {
        id: table
        width: parent.width
        height: parent.height



        TableViewColumn {
            role: "client"
            title: "Client"
//            width: 100
        }

        TableViewColumn {
            role: "contact"
            title: "Contact"
//            width: 200
        }
        TableViewColumn {
            role: "produit"
            title: "Produit"
//            width: 200
        }
        TableViewColumn {
            role: "lieu"
            title: "Lieu"
//            width: 200
        }
        TableViewColumn {
            role: "satisfaction"
            title: "Satisfaction"
//            width: 200
        }

        model: MyModel{}
        Component.onCompleted: table.positionViewAtRow(rowCount -1, ListView.Contain)
    }
}

import QtQuick 2.0
import QtQuick.Layouts 1.1
import "../javascript/ColumnHelper.js" as ColumnHelper

Rectangle {
    id : myListView

    property variant columnWidths: ColumnHelper.calcColumnWidths(model, list)

    /*  ListModel {
            id: unModel
            ListElement {
                nomClient : "";
                contactClient : "";
                produit : "";
                lieuProduit : "";
                satisfactionClient : "";
            }
        }*/


    ListView {
        id : list
        anchors { fill: parent; margins: 2 }

        model: MyModel{}
//        delegate: DelegateComponent{}

        highlight: Rectangle { color: 'lightblue' ; radius : 4 }
        focus: true
        onCurrentItemChanged: {

        }

        spacing: 4

        /*header: Row{
            spacing: parent.width*0.1
            width: view.width
            height: view.height * 0.15
            Text{ text: "Client"}
            Text{ text: "Contact"}
            Text{ text: "Produit"}
            Text{ text: "Position"}
            Text{ text: "Satisfaction"}
        }*/
    }
}


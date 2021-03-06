import QtQuick 2.0
import "../../modules"

Rectangle {
    id : myListView

    property bool active : calendarPage.calendar1_visibility

//    ListModel {
//        id: idModel
//        ListElement {
//            time: "00:00"
//            name : ""
//            rdv : ""
//        }
//    }

    Component {
        id: idDelegate

        Item {
            id: idItem
            anchors { left: parent.left; right: parent.right }
            height: 1/16 * mainPage.height

            Row {
                id: row
                anchors { fill: parent; margins: 0.01 * parent.width }

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    width: 0.9 * parent.width
                    text: "<b>" + time + "</b>\t" + name + "\t" + rdv
                    font.family: "acumin-pro"
                    font.pixelSize: Qt.application.font.pixelSize * 1.25

                    MouseArea {
                        anchors.fill: parent
                        onClicked: idListView.currentIndex = index
                    }

                }

                ListButtonDelete {
                    height: parent.height
                    width: 0.1 * parent.width
                    onClicked: console.log("delete")
                }

            }

        }
    }

    ListView {
        id : idListView
        anchors { fill: parent; margins: 2 }

        //model: idModel
        model : EventModel { id: idModel}
        delegate: idDelegate

        highlight: Rectangle { color: colorMajor ; radius : 20 }
        focus: true
        onCurrentItemChanged: {
                        clientName = idModel.get(idListView.currentIndex).name
                        clientRdv = idModel.get(idListView.currentIndex).rdv
                        rdvTime = idModel.get(idListView.currentIndex).time
                        clientStatus = idModel.get(idListView.currentIndex).gendarme
            //passer l'Id prospect + prosp-numfiche
        }


        spacing: 4
    }


    onActiveChanged : {
        if (active) {
            console.log("ok")
            getEventDatas()
        }
    }

    function getEventDatas() {
        console.log("requete http")

        //        var uri = "http://modern.clconseils.fr/Odata/int_prospects";

        //        var request = new XMLHttpRequest()
        //        request.open('GET', uri, true);

        //        request.onreadystatechange = function() {
        //            if (request.readyState === XMLHttpRequest.DONE && request.status == 200) {

        //                idModel.clear();

        //                //console.log("response", request.responseText)
        //                var result = JSON.parse(request.response.data.value)

        //                console.log(result[0])

        //                for (var ligne in result) {

        //                    console.log("ligne", ligne)
        //                    idModel.append({
        //                                          "hours": result.treks[ligne].label,
        //                                          "customer": result.treks[ligne].length,
        //                                          "type": result.treks[ligne].time,
        //                                      });
        //                    MyContext.setWellDoneMessage("\n" + result.treks[ligne].pathway);

        //               }


        //            } else {
        //                console.log("HTTP:", request.status, request.statusText)
        //            }
        //        }

        //        request.send()
    }
}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import QtLocation 5.6
import QtPositioning 5.5

import QtMultimedia 5.8

//import QtWebView 1.1

import "../../modules"
import "../../../images"

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    spacing: 0


    RowLayout {
        spacing: 0
        Layout.preferredHeight: parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: red


            NewMap {
                id : map
                anchors.fill : parent

                markerDatas: [{name : "Belson Guy", satisfaction :  true, gendarme : false, location : QtPositioning.coordinate(48.8584, 2.2945)},
                    {name : "Dupont Jacques", satisfaction :  false, gendarme : true, location : QtPositioning.coordinate(48.853, 2.35)},
                    {name : "Bertrand Vanina", satisfaction :  true, gendarme : true, location : QtPositioning.coordinate(48.8738, 2.295)}]


                MyButton {
                    text : "Go"
                    width: (1/3) * etat.width
                    height: (1/10) * etat.height
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    onClicked : {
                        playsound.play()
                        notification.open();
                    }
                }
                onMarkerClicked: popup.open()
            }

        }
    }

    PopupInfo {id : popup}
    PopupNotification {id : notification}
    PopupRejection { id : raisons}

    SoundEffect {
        id: playsound
        source : ringPath
    }


}

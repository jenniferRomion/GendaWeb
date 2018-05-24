import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../modules"
import "ClientPage"

Page {
    id : clientPage

    property bool client1_visibility: true
    property bool client2_visibility: false
    property bool client3_Client_visibility: false
    property bool client3_Squad_visibility: false
    //property bool client4_visibility: false
    property bool client4_Client_visibility: false
    property bool client4_Squad_visibility: false
    property bool client5_visibility: false

    /* Client datas */
    property string client_name : ""
    property bool client_gendarme: true
    property bool client_satisfaction: true
    property string client_phone : "00 00 00 00 00"
    property string client_mobile : "06 00 00 00 00"
    property string client_mail : "customer@mail.com"

    property bool squad: client_gendarme ? true : false
    property string squadName: "Gendarmerie de l'Hérault"



//    header: Label {
//        text: qsTr("Mes clients")
//        font.pixelSize: Qt.application.font.pixelSize * 2
//        font.family: "acumin-pro"
//        padding: 10
//    }

        Etat1 {
            id : etat1
            visible: client1_visibility
        }

        Etat2 {
            id : etat2
            visible: client2_visibility
        }

        Etat3_Client {
            id : etat3_client
            visible: client3_Client_visibility
        }

        Etat3_Squad {
            id : etat3_squad
            visible: client3_Squad_visibility
        }

        Etat4_Client {
            id : etat4_client
            visible: client4_Client_visibility
        }

        Etat4_Squad {
            id : etat4_squad
            visible: client4_Squad_visibility
        }

        Etat5 {
            id : etat5
            visible: client5_visibility
        }
}



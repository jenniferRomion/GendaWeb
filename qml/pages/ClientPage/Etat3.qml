import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : root

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

   Rectangle {
            Layout.preferredHeight: 0.15 * root.height
            Layout.fillWidth: true
            Layout.bottomMargin: 0.01 * root.height
            color: "red"

            LittleHeadCustomer {
                id: lHeadC
            }
           }

   Rectangle {
       Layout.fillHeight: true
       Layout.fillWidth: true
       Layout.margins: 0.01 * root.height
       color: "green"

       MyButton {
           text: "Portable\n 06 88 56 44 25"
           onClicked: {
               console.log("Portable")
           }
           anchors.fill: parent
       }
   }

   Rectangle {
       Layout.fillHeight: true
       Layout.fillWidth: true
       Layout.margins: 0.01 * root.height
       color: "orange"

       MyButton {
           text: "Fixe\n 05 11 56 44 25"
           onClicked: {
               console.log("Fixe")
           }
           anchors.fill: parent
       }
   }

   Rectangle {
       Layout.fillHeight: true
       Layout.fillWidth: true
       Layout.margins: 0.01 * root.height
       color: "blue"


       MyButton {
           text: "Mail\n user@wandoo.fr"
           onClicked: {
               console.log("Mail")
           }
           anchors.fill: parent
       }
   }

   Rectangle {
       Layout.preferredHeight: 0.1 * root.height
       Layout.fillWidth: true
       Layout.topMargin:  0.01 * root.height

       RowTypeButton {
           srcLeftIcon: "../../images/icon/back.png"
           onLeftClicked: {
               console.log("Vous retournez en arrière")
               lHeadC.gendarmerie = false
           }

           textMiddleButton: "Visiter"
           onMiddleClicked: {
               console.log("Nous préparons votre itinéraire")
               lHeadC.gendarmerie = true
           }

           textRightButton: "Rdv"
           onRightClicked: {
               console.log("Veuillez fixer votre rdv")
               clientPage.client3_visibility = false;
               clientPage.client4_visibility = true;

           }
       }

   }

}

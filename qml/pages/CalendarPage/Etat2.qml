import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : etat

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        ColumnLayout {
            spacing : 0.01 * etat.height
            Layout.margins: 0.02 * etat.width
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (3/32)*etat.height

                border.color: "#26282a"
                border.width: 1
                radius: 4
                //color: "white"

                TextBox {
                    id : dayLabel
                    anchors.centerIn: parent
                    bold : true
                    text: Qt.locale().standaloneDayName(calendarPage.currentDate.getDay(), Locale.LongFormat)
                          + " "
                          + calendarPage.currentDate.getDate()
                          + " "
                          + Qt.locale().standaloneMonthName(calendarPage.currentDate.getMonth())
                          + calendarPage.currentDate.toLocaleDateString(Qt.locale(), " yyyy")
                          + " _ "
                          + calendarPage.rdvTime
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (1/4)*etat.height

                radius: 4
                color: "darkBlue" // a modifier selon type de customer

                TextBox {
                    id : customerLabel
                    horizontalAlignment: Text.AlignLeft
                    bold : true
                    color : "white"

                    text: "Weber" + " " + "Quentin" + "\n"
                          + "00.00.00.00.00" + "\n"
                          + "13 rue de l'argonne 45 000 ORLEANS"

                    //elweb.int_propect.prosp_nom + " " + elweb.int_propect.prosp_prenom
                    //si slsav.customer.numslweb ok
                    //slsav.customers.phoneprimary || phonesecondary
                    //slsav.customerAdresses

                    //sinon
                    //elweb.int_propect.prosp_adressedom + " " + prosp_cpdom + " " + prosp_villedom
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: (3/32)*etat.height

                border.color: "#26282a"
                border.width: 1
                radius: 4
                //color: "blue"

                TextBox {
                    id : rdvType
                    horizontalAlignment: Text.AlignLeft

                    text: "R1 _ Etude à présenter"
                    //elweb.int_rdvtype.libelle + " _ " + elweb.int_etatrdv.rdv_libelle
                }
            }

        }
    }


    /* RDV informations */
    RowLayout {
        spacing: 0
        Layout.margins: 0.02 * etat.width

        Layout.preferredHeight: (3/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightGrey"

            TextBox {
                id : comment
                horizontalAlignment: Text.AlignLeft
                anchors.top : parent.top

                text: "<b>Commentaire commercial : </b>"
                      + "\n" + "\n"
                      + "R 06/10/2017  Tel au siège pr info et rdv conforté par SOLIGNAC Jérôme"
                      //elweb.int_prospect.prosp_obserCcial
            }
        }
    }

    /* Buttons */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightBlue"

            MyButton {
                srcIcon: "../../../images/icon/arrow_left.png"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked: {
                    calendarPage.calendar1_visibility = true;
                    calendarPage.calendar2_visibility = false;
                }
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightBlue"

            MyButton {
                text : "Editer"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    console.log("edit")
                }
            }
        }
    }




}

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

    /* Header */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.10 * etat.width
            color: colorMinor

            Image {
                source : "../../../images/icon/pin.png"
                height: 0.05 * mainPage.height
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.70 * etat.width
            color: colorMinor

            TextBox {
                bold : true
                horizontalAlignment: Text.AlignLeft
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
            Layout.preferredWidth: 0.20 * etat.width
            color: colorMinor

            HeaderButtonReturn {
                onClicked: {
                    calendarPage.calendar1_visibility = true;
                    calendarPage.calendar2_visibility = false;
                }
            }
        }
    }

    /* customer */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (2/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.leftMargin: 0.01 * mainPage.width
            Layout.rightMargin: 0.01 * mainPage.width
            radius: 4
            color:calendarPage.clientStatus ? colorGendarme : colorSimpleClient

            TextBox {
                id : customerLabel
                horizontalAlignment: Text.AlignLeft
                bold : true
                color : "white"

                text: calendarPage.clientName + "\n"
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
    }

    /* Rdv label */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "blue"

            TextBox {
                id : rdvType
                bold : true
                underline : true
                text: calendarPage.clientRdv
                //elweb.int_rdvtype.libelle + " _ " + elweb.int_etatrdv.rdv_libelle
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

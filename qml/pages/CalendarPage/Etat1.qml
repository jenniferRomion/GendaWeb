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

    spacing: 0.01 * etat.height

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/2)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "white"

            MyCalendar {
                id : calendar
                anchors.centerIn: parent
            }

        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/18)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightGrey"

            TextBox {
                id : dayLabel
                anchors.centerIn: parent
                bold : true
                text: Qt.locale().standaloneDayName(calendar.selectedDate.getDay(), Locale.LongFormat)
                      + " "
                      + calendar.selectedDate.getDate()
                      + " "
                      + Qt.locale().standaloneMonthName(calendar.selectedDate.getMonth())
                      + calendar.selectedDate.toLocaleDateString(Qt.locale(), " yyyy")
            }

        }
    }

    RowLayout {
        spacing: 0
        Layout.preferredHeight: (6/18)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightGrey"

            EventList {
                id : eventList
                anchors.fill : parent
            }
        }


    }

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
                text : "Nouveau"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked: console.log(calendar.selectedDate)
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "lightBlue"

            MyButton {
                text : "Voir"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    calendarPage.currentDate = "calendar.selectedDate";
                    calendarPage.calendar1_visibility = false;
                    calendarPage.calendar2_visibility = true;
                }
            }
        }
    }


}

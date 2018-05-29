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
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.10 * etat.width
            color: colorMinor

            ShadowIcon {
                iconSrc: "../../../images/icon/itinerary.png"
                height: 0.05 * mainPage.height
                width: parent.width
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.70 * etat.width
            color: colorMinor

            TextBox {
                text : "Nouvelle destination"
                bold : true
                horizontalAlignment: Text.AlignLeft
                leftPadding: 0.05 * parent.width
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.20 * etat.width
            color: colorMinor

            HeaderButtonReturn {
                onClicked: {
                    itineraryPage.itinerary2_visibility = false
                    itineraryPage.itinerary1_visibility = true
                }
            }
        }
    }

    /* addressFrom Form */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (3/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "red"

            AddressForm {
                id : addresseFormFrom
                iconSrc: "../../../images/icon/circle.png"
                formTitle : "Point de départ"
            }
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredHeight: 0.005 * etat.height
        color: "darkgrey"
    }

    /* addressTo Form */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (3/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "blue"

            AddressForm {
                id : addresseFormTo
                iconSrc: "../../../images/icon/marker.png"
                formTitle : "Destination"
            }
        }
    }

    /* Button */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: colorMinor

            MyButton {
                text : "Rechercher"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    //geocode
                    streetFrom = addresseFormFrom.formStreet;
                    cityFrom = addresseFormFrom.formCity;
                    streetTo = addresseFormTo.formStreet;
                    cityTo = addresseFormTo.formCity;

                    itineraryPage.itinerary3_visibility = true
                    itineraryPage.itinerary2_visibility = false
                }
            }
        }
    }

}

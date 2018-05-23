import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

/*ColumnLayout {
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0 */

RowLayout {
    Layout.fillHeight: true
    Layout.fillWidth: true
    anchors.fill: parent
    //        anchors.margins: 0.05 * mainPage.width

    spacing: 0

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.1 * mainPage.width
        color: "transparent"

        Image {
            width: height
            height: 0.05 * mainPage.height
            source: "../../../images/icon/direction.png"
            fillMode: Image.PreserveAspectFit

            anchors.centerIn: parent
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.15 * mainPage.width
        color: "transparent"

        TextBox {
            bold: true
            text: "Via " + itineraryPage.roadSelected
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: Qt.application.font.pixelSize
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.1 * mainPage.width
        color: "transparent"

        Image {
            width: height
            height: 0.05 * mainPage.height
            source: "../../../images/icon/distance.png"
            fillMode: Image.PreserveAspectFit

            anchors.centerIn: parent
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.15 * mainPage.width
        color: "transparent"

        TextBox {
            bold: true
            text: itineraryPage.distanceItineray + " km"
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: Qt.application.font.pixelSize
        }
    }
    //}

    /*RowLayout {
    Layout.fillHeight: true
    Layout.fillWidth: true
    //        anchors.margins: 0.05 * mainPage.width

    spacing: 0*/

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.1 * mainPage.width
        color: "transparent"

        Image {
            width: height
            height: 0.05 * mainPage.height
            source: "../../../images/icon/clients.png"
            fillMode: Image.PreserveAspectFit

            anchors.centerIn: parent
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.15 * mainPage.width
        color: "transparent"

        TextBox {
            bold: true
            text: itineraryPage.numberClients + " clients"
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: Qt.application.font.pixelSize
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.1 * mainPage.width
        color: "transparent"

        Image {
            width: height
            height: 0.05 * mainPage.height
            source: "../../../images/icon/time.png"
            fillMode: Image.PreserveAspectFit

            anchors.centerIn: parent
        }
    }

    Rectangle {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.preferredWidth: 0.15 * mainPage.width
        color: "transparent"

        TextBox {
            bold: true
            text: itineraryPage.timeItinerary + " min"
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: Qt.application.font.pixelSize
        }
    }
}
//}

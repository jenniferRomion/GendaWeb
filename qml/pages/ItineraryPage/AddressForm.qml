import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"


ColumnLayout {

    id : form

    property string iconSrc : ""
    property string formTitle : ""
    property alias formStreet : street.text
    property alias formCity : city.text

    anchors.fill: parent
    anchors.centerIn: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    /* title */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.preferredWidth: (1/10) * parent.width
            //color: "blue"

            Image {
                source : iconSrc
                height: 0.05 * mainPage.height
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: (9/10) * parent.width
            //color: "red"

            TextBox {
                text: formTitle
                bold: true
                underline: true
                horizontalAlignment: Text.AlignLeft
            }
        }
    }

    /* street */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "white"

            InputBox {
                id: street
                placeholderText: "Rue"
                font.pixelSize: Qt.application.font.pixelSize * 1.25

                horizontalAlignment: TextInput.AlignLeft
                width : 0.95 * etat.width
                anchors.centerIn: parent
            }
        }
    }

    /* city */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "white"

            InputBox {
                id: city
                placeholderText: "Ville"
                font.pixelSize: Qt.application.font.pixelSize * 1.25

                horizontalAlignment: TextInput.AlignLeft
                width : 0.95 * etat.width
                anchors.centerIn: parent
            }
        }
    }


}

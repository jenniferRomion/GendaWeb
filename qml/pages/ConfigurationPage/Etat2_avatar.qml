import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {

    id : etat

    property string newAvatarSrc: ""

    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    /* header */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (1/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        z : 3

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.10 * etat.width
            color: colorMinor

            Image {
                source : "../../../images/icon/user.png"
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
                text : "Avatar"
                bold : true
                horizontalAlignment: Text.AlignLeft
            }
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.20 * etat.width
            color: colorMinor

            HeaderButtonReturn {
                onClicked: {
                    console.log("ok")
                    configurationPage.config_visibility2_avatar = false
                    configurationPage.config_visibility2 = true
                }
            }
        }
    }


    /* AvatarList */
    RowLayout {
        spacing: 0
        Layout.topMargin: 0.01 * mainPage.height
        Layout.preferredHeight: (3/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        z : 0

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "lightblue"

            AvatarList {
                id : avatarlist
                anchors.fill : parent
            }
        }
    }



    /* Selected */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (3/8)*parent.height
        Layout.fillHeight: true
        Layout.fillWidth: true
        z : 3

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            //color: "yellow"

            Image {
                anchors.centerIn: parent
                height: 0.8 * parent.height
                source : newAvatarSrc
                fillMode: Image.PreserveAspectFit
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
            //color: "red"

            MyButton {
                text : "Valider"
                anchors.centerIn: parent
                width: (1/3) * etat.width
                height: (1/10) * etat.height

                onClicked : {
                    avatarPath = newAvatarSrc
                    configurationPage.config_visibility2_avatar = false
                    configurationPage.config_visibility2 = true
                }
            }
        }
    }




}

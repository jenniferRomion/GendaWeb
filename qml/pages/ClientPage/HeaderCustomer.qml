import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ColumnLayout {
    property int page

    id : root

    anchors.fill : parent
    Layout.fillHeight: true
    Layout.fillWidth: true

    spacing: 0

    /*Customer Name */
    RowLayout {
        spacing: 0
        Layout.preferredHeight: (1/3)*root.height
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle {
            Layout.preferredWidth: 0.1 * etat.width
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"

            Image {
                source: clientPage.client_gendarme ? "../../../images/icon/gendarme_gris.png" : "../../../images/icon/user.png"
                width: height
                height: 0.10 * etat.width
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.preferredWidth: 0.7 * etat.width
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"

            TextBox {
                text: clientPage.client_name.toUpperCase()
                bold : true
                color: "white"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            Layout.preferredWidth: 0.2 * etat.width
            Layout.fillHeight: true
            color: "transparent"
            opacity : page == 2 || page == 3 ? 1 : 0

            HeaderButtonReturn {
                id : returnBtn
                onClicked: {
                    if (page == 2)
                    {
                        clientPage.client2_visibility = false;
                        clientPage.client1_visibility = true;
                    }
                    else if (page == 3)
                    {
                        clientPage.client3_Client_visibility = false;
                        clientPage.client4_visibility = true;
                    }
                    else
                        console.log("invalid command")

                }
            }
        }
    }


    RowLayout {
        id : row2
        spacing: 0
        Layout.fillWidth: true
        Layout.preferredHeight: (2/3) * root.height

        ColumnLayout {
            spacing: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 0.8 * root.width

            /* Police Station */
            RowLayout {
                spacing: 0
                Layout.fillWidth: true
                Layout.preferredHeight: (1/2) * row2.height

                Rectangle {
                    Layout.preferredWidth: 0.1 * root.width
                    Layout.fillHeight: true
                    color: "transparent"
                    opacity: clientPage.client_gendarme ? 1 : 0

                    Image {
                        source: "../../../images/icon/gendflam.png"
                        width: height
                        height: 0.10 * etat.width
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    Layout.preferredWidth: 0.7 * root.width
                    Layout.fillHeight: true
                    color: "transparent"
                    opacity: clientPage.client_gendarme ? 1 : 0

                    TextBox {
                        text: clientPage.squadName
                        color: "white"
                        anchors.centerIn: parent
                    }
                }

                MouseArea {
                    anchors.fill : parent
                    onClicked: {
                        if (clientPage.client_gendarme)
                        {
                            clientPage.client2_visibility = false
                            clientPage.client5_visibility = true
                        }
                    }
                }
            }

            /* Position */
            RowLayout {
                spacing: 0
                Layout.fillWidth: true
                Layout.preferredHeight: (1/2)* row2.height

                Rectangle {
                    Layout.preferredWidth: 0.1 * root.width
                    Layout.fillHeight: true
                    color: "transparent"

                    Image {
                        source: "../../../images/icon/marker.png"
                        width: height
                        height: 0.10 * etat.width
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    Layout.preferredWidth: 0.7 * root.width
                    Layout.preferredHeight: (1/4)*root.height
                    color: "transparent"

                    TextBox {
                        text: "000km _ 00000 VILLE" // a modifier
                        color: "white"
                        font.family: "Californian FB"
                        font.pixelSize: Qt.application.font.pixelSize * 1.15
                    }
                }
            }
        }

        /* satisfaction Icon */
        ColumnLayout {
            spacing: 0
            Layout.fillHeight: true
            Layout.preferredWidth: 0.2 * root.width


            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"

                Rectangle {
                    anchors.centerIn: parent
                    height: 2/3 * root.width > 0.15 * root.width ? width : 0.10 * root.width
                    width: 2/3 * root.width > 0.15 * root.width ? 0.15 * root.width : height
                    border.width: 1
                    radius: 10
                    border.color: "#26282a"
                    color: clientPage.client_satisfaction ? "green" : "red"

                    Image {
                        source: clientPage.client_satisfaction ? "../../../images/icon/smiley.png" : "../../../images/icon/smiley_sad.png"
                        width: height
                        height: 0.10 * etat.width
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }
                }
            }
        }


    }
}

import QtQuick 2.0

Component {
    
    id: delegateComponent
    
    Item {
        
        anchors {
            left: parent.left;
            right: parent.right
        }
        height: column.implicitHeight + 4
        
        Row {
            id: column
            anchors {
                fill: parent
                margins: 2
            }
            
            Text {
                text: nomClient
                font.family: "acumin-pro"
                font.pixelSize: Qt.application.font.pixelSize * 1.5
            }
            
            Text {
                text: contactClient
                font.family: "acumin-pro"
                font.pixelSize: Qt.application.font.pixelSize * 1
            }
            
            Text {
                text: produit
                font.family: "acumin-pro"
                font.pixelSize: Qt.application.font.pixelSize * 1
            }
            
            Text {
                text: lieuProduit
                font.family: "acumin-pro"
                font.pixelSize: Qt.application.font.pixelSize * 1
            }
            
            Text {
                text: satisfactionClient
                font.family: "acumin-pro"
                font.pixelSize: Qt.application.font.pixelSize * 1
            }
        }
        
        MouseArea {
            anchors.fill: parent
            onClicked: view.currentIndex = index
        }
    }
}

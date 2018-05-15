import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtQuick.Window 2.2


//Search change todo  ctrl+F -> //AZE
RowLayout{
    id: rowTypeButton
    anchors.fill: parent
    spacing: 0


    property string sourceImageLeftButton: imageLeftButton.source
    property string textMiddleButton: middleButton.text
    property string textRightButton: rightButton.text
    signal leftClicked
    signal middleClicked
    signal rightClicked

    Rectangle{
        Layout.fillWidth: true
        Layout.minimumWidth: leftButton.width
        Layout.preferredWidth: 70
        Layout.maximumWidth: 100
        Layout.leftMargin: 10
        
        MyButton{
            id: leftButton
            contentItem: Image {
                id: imageLeftButton
                source: sourceImageLeftButton
                width: leftButton.width
                height: leftButton.height
                fillMode: Image.PreserveAspectFit
            }
            onClicked: rowTypeButton.leftClicked()
        }
    }
    
    Rectangle{
        Layout.fillWidth: true
        Layout.minimumWidth: 50
        Layout.preferredWidth: 70
        Layout.maximumWidth: 100
        
        MyButton{
            id: middleButton
            text: textMiddleButton
            onClicked: rowTypeButton.middleClicked()
        }
    }
    
    Rectangle{
        Layout.fillWidth: true
        Layout.minimumWidth: 50
        Layout.preferredWidth: 70
        Layout.maximumWidth: 100
        Layout.rightMargin: 10
        
        MyButton{
            id: rightButton
            text: textRightButton
            onClicked: rowTypeButton.rightClicked()
        }
    }
}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

Popup {
    id : popup
    
    x : (1/8) * configPage.width
    y : (1/20) * configPage.height
    
    height: (3/4) * mainPage.height
    width: (3/4) * mainPage.width
    
    modal: true
    focus: true
    font.family: "Comic Sans MS"

    background: BackgroundCopyrights{
        width: (3/4) * configPage.width
        height: 0.9 * configPage.height
    }
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
}


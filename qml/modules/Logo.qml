import QtQuick 2.0
import "../../images"


Image {
    id: logo
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.centerIn: parent
    source: "../../images/logo_clconseils"

    height: (1/8) * mainPage.height
    fillMode: Image.PreserveAspectFit
    }

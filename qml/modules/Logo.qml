import QtQuick 2.0
import "../../images"


Image {


    id: logo
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    source: "../../images/logo-clconseils"

    height: (1/10) * mainPage.height
    fillMode: Image.PreserveAspectFit
    }

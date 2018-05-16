import QtQuick 2.0

Row {
    property real starSize : 0.01 * mainPage.height
    property string backgroundColor : "white"
    property string starSrc : "../../../images/star_or.png"
    spacing: 0.01 * mainPage.width

//    width : starSize * mainPage.ccialPoints

    Repeater {
        model: mainPage.ccialPoints

        Rectangle {
            width: starSize
            height: starSize
            color: backgroundColor

            Image {
                height: starSize
                fillMode: Image.PreserveAspectFit
                source : starSrc
            }
        }
    }

}

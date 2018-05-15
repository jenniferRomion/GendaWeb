import QtQuick 2.0

Row {
    property int points: 0

    width : (0.05 * mainPage.height) * points

    Repeater {
        model: points

        Rectangle {
            width: 0.05 * mainPage.height
            height: 0.05 * mainPage.height

            Image {
                height: 0.05 * mainPage.height
                fillMode: Image.PreserveAspectFit

                source : "../../../images/star_or.png"
            }
        }
    }

}

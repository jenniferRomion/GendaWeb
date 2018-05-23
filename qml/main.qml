import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2
import QtQuick.Window 2.2

import QtPositioning 5.8

import "../qml/modules"
import "../qml/pages"

ApplicationWindow {

    id : mainPage

    /* System */
    property var pixelRatio: Screen.devicePixelRatio
    property var pixelDensity: Screen.pixelDensity
    property bool debugVisibility : false;

    /* Ccial Preferences & parametres
    * Values a modifier selon Ctx
    */
    property string avatarPath : "../../../images/user.png"
    property string ringPath : "../../../sounds/ressort.wav"

    property string colorMajor : "#C6AF90"
    property string colorMinor : "#EDECE0"
    property string colorGendarme : "#4169E1"
    property string colorGendarmeMinor :"#87CEFA"
    property string colorSimpleClient : "#32CD32"
    property string colorSimpleClientMinor : "#B0F2B6"

    property int ccialPoints : 4

    property bool notificationActive: true
    property int distanceIndex: 2

    /* Map datas */
    property string addresseFrom: streetFrom + ", " + cityFrom + ", " + countryFrom
    property string streetFrom: ""
    property string cityFrom: ""
    property string countryFrom: "France"

    property string addresseTo : streetTo + ", " + cityTo + ", " + countryTo
    property string streetTo: ""
    property string cityTo: ""
    property string countryTo: "France"

    visible: true

    width: 384
    height: 640

    //    width: Screen.width
    //    height: Screen.height

    title: "GendaWeb"

    SystemPalette {
        id: systemPalette
    }

    header: MyToolBar {
        id: tabBar
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent

        property bool interactivity : true
        //        property var magicCode : "31414";
        //        property var currentCode : "";

        currentIndex: tabBar.currentIndex
        interactive: interactivity

        //        onCurrentIndexChanged: {
        //            currentCode += currentIndex
        //            if( currentCode.length > 5 )
        //                currentCode = currentCode.substr(1)

        //            if( magicCode == currentCode)
        //            {
        //                console.log("bingo");
        //                debugVisibility === false ? debugVisibility = true : debugVisibility = false ;
        //            }

        //            if (currentIndex == 2 || (currentIndex == 4 && !debugVisibility) ) { //a modifier si bug d'affichage
        //                interactivity = false
        //            }
        //            else {
        //                interactivity = true
        //            }
        //        }

        /* Item of the SwipeView */

        HomePage{
            id: homePage
        }

        ClientPage{
            id: clientPage
        }

        ItineraryPage {
            id: itineraryPage
        }

        MapPage{
            id: mapPage
        }

        CalendarPage{
            id: calendarPage
        }

        ConfigurationPage{
            id: configurationPage
        }


        //        MyDebuggingPage {
        //            id : debugPage
        //        }
    }

}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import "../../modules"

ListModel {
    id: model

    ListElement {
        srcIcon : "../../../images/icon/navigation/depart.png"
        textNav : "Départ"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/rightTurn.png"
        textNav : "Tourner à droite: Rue Michelet"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/leftTurn.png"
        textNav : "Tournez à gauche"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/rightTurn.png"
        textNav : "Puis tout de suite, tournez à droite: Quai du Palladium"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/rightTurn.png"
        textNav : "Tourner à droite: Rue Baudin"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/leftTurn.png"
        textNav : "Tournez à gauche: Rue Flaugergues"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/keepStraight.png"
        textNav : "Continuer sur: Rue Sérane"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/rightTurn.png"
        textNav : "Tourner à droite: Rue du Pont de Lattes"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/keepStraight.png"
        textNav : "Continuer sur: Rue Henri René"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/leftTurn.png"
        textNav : "Tournez à gauche: Rue Frédéric Bazille"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/rightTurn.png"
        textNav : "Tourner à droite: Avenue de Palavas"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/leftRoundabout.png"
        textNav : "Au rond-point, Rond-Point Vincent Badie, prendre la 3ème sortie: D28 / Avenue de la Voie Domitienne"
    }

    ListElement {
        srcIcon : "../../../images/icon/navigation/arrival.png"
        textNav : "Arrivée"
    }
}

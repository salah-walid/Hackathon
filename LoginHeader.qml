import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1

Item {
    ToolButton {
        anchors.left: parent.left
        height: 28

        onClicked: {
            drawer.open()
        }

        Image {
            source:"icon/menu.png"
            anchors.centerIn: menuButton

            height:15
            width:20
        }
        id: menuButton
    }

}

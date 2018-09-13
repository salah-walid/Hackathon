import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    ToolButton {
        id : add
        anchors.left: parent.left
        anchors.leftMargin: 5

        Image {
            source:"icon/plus.png"
        }

        font.pixelSize: Qt.application.font.pixelSize * 1.6
    }
    TextField {
        id : textSend
        anchors.left: add.right
        anchors.leftMargin: 5
        anchors.right : send.left
        anchors.rightMargin: 5
    }

    ToolButton {

        id : send

        anchors.right: parent.right
        anchors.rightMargin: 5

        Image {
            source:"icon/send.png"
        }
    }
}


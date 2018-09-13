import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

Item {
    ToolButton {
        id : add
        anchors.left: parent.left
        anchors.leftMargin: 5


        Image {
            source:"icon/push-pin.png"
            anchors.centerIn: add
        }

        font.pixelSize: Qt.application.font.pixelSize * 2
    }
    TextField {
        id : textSend
        anchors.left: add.right
        anchors.leftMargin: 5
        anchors.right : emoticon.left
        anchors.rightMargin: 5
        Material.accent: "#45b482"
        placeholderText: qsTr("Send message")
    }

    ToolButton {

        id : emoticon

        anchors.right: send.left
        anchors.rightMargin: 5

        Image {
            source:"icon/emoticon.png"
            anchors.centerIn: emoticon
        }
    }

    ToolButton {

        id : send

        anchors.right: parent.right
        anchors.rightMargin: 5

        onClicked: {

            if(textSend.text.length>0) {
                listModel.append({"label": textSend.text})
                textSend.clear()
            }
        }

        Image {
            source:"icon/send.png"
            anchors.centerIn: send
        }
    }

}


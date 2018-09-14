import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

Item {
    ToolButton {
        id : add

        anchors.left: parent.left
        anchors.leftMargin: 0.5

        //anchors.centerIn: : parent.
        Image {
            source:"icon/push-pin.png"
            anchors.centerIn: add
            height: 20
            width: 25
        }
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
            height: 20
            width: 25
        }
    }

    function makejSONFromString (messageSend) {
        return "{\"pseudo\" : \""+pseudo+"\","+"\"message\" : \""+messageSend+"\"}" ;
    }

    ToolButton {

        id : send

        anchors.right: parent.right
        anchors.rightMargin: 5

        onClicked: {

            if(textSend.text.length>0) {
                listModel.append({"label": textSend.text})
                socket.sendTextMessage(makejSONFromString(textSend.text))
                console.log(makejSONFromString(textSend.text))
                textSend.clear()
            }
        }

        Image {
            source:"icon/send.png"
            anchors.centerIn: send
            height: 20
            width: 25
        }
    }

}


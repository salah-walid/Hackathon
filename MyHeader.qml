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

    Text {
        id : talkingTo

        anchors.left: menuButton.right
        anchors.leftMargin: 5
        anchors.verticalCenter: menuButton.verticalCenter
        font.pointSize: 15
        font.styleName: "Calibri"
        text : "Talking to "
        color: "#505358"
    }
    Text {
        id : nameDoctor

        anchors.left : talkingTo.right
        anchors.leftMargin: 7
        anchors.verticalCenter: menuButton.verticalCenter
        wrapMode: Text.WordWrap
        font.pointSize: 15
        font.styleName: "Calibri"
        text : "Dr.Abdesslam"
        color: "#45b482"
        elide : Text.ElideRight
    }

    ToolButton {
        id : call
        height: 28

        anchors.right : videoCall.left
        anchors.rightMargin:3

        Image {
            source:"icon/call-answer.png"
            anchors.centerIn: call

            height: 20
            width: 25
        }
    }

    ToolButton {
        id : videoCall
        height: 28

        anchors.right : parent.right
        anchors.rightMargin: 5

        Image {
            source:"icon/video-camera.png"
            anchors.centerIn: videoCall
            height: 20
            width: 25
        }
    }
}

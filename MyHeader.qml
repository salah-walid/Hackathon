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

        }


        id: menuButton
        //font.pixelSize: Qt.application.font.pixelSize * 1.8
    }
    Item{
        anchors.topMargin: 50
        anchors.left : menuButton.right
        anchors.right : callIcon.left

        anchors.leftMargin: 20

        anchors.verticalCenter: parent.bottom

        Text {
            id : talkingTo


            anchors.leftMargin: 5

            font.pixelSize: 20
            Layout.leftMargin: 20
            //font.bold : true
            font.styleName: "Calibri"
            text : "Talking to "
            color: "#505358"
        }
        Text {
            id : nameDoctor

            anchors.left : talkingTo.right
            anchors.leftMargin: 5
            wrapMode: Text.WordWrap
            font.pixelSize: 20
            //font.bold: true
            font.styleName: "Calibri"
            text : "Dr.Abdesslam"
            color: "#45b482"
        }
    }

    ToolButton {
        id : callIcon
        height: 28

        anchors.right : videoCallIcon.left
        anchors.rightMargin: 5

        Image {
            source:"icon/call-answer.png"
            anchors.centerIn: callIcon

        }
    }

    ToolButton {
        id : videoCallIcon
        height: 28

        anchors.right : parent.right
        anchors.rightMargin: 5

        Image {
            source:"icon/video-camera.png"
            anchors.centerIn: videoCallIcon

        }
    }


}

import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Item {
    id: item1
    property string name_sender: null
    property date date_send: new Date()
    property string message: null
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.bottomMargin: 10
    height: 100+text_sender.i


    Avatar {
        id : avatar

        anchors {
            left: parent.left
            top : parent.top
        }
        anchors.topMargin : 15
        anchors.leftMargin: 15
    }

    Text {
        id : text_sender
        text : name_sender
        anchors.leftMargin: 14
        anchors.topMargin: 7
        color:  "#45b582"

        font.pointSize: 15
        anchors {
            left: avatar.right; top : parent.top

        }


    }

    Text {
        id : text_date
        text : date_send
        anchors.topMargin: 0
        color: "#4d597e"
        font.pointSize: 9
        anchors {
            left: text_sender.left; top : text_sender.bottom
        }
        anchors.leftMargin: 0
    }

    Text {
        id : message_sender
        text : message
        anchors.right: parent.right
        anchors.rightMargin: 20
        wrapMode: Text.WrapAnywhere
        font.pointSize: 13
        color : "#ebebec"
        anchors {
            left: text_sender.left; top : text_date.bottom
        }
        anchors.leftMargin: 0
        anchors.topMargin : 20
    }

    Rectangle{
        width: 569
        height: 2
        color : "#4d597e"
        border.color: "#4d597e"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: message_sender.bottom
        anchors.topMargin: 5


    }
}

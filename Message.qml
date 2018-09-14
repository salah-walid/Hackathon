import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    property string name_sender: null
    property date date_send: new Date()
    property string message: null

    Avatar {
        id : avatar

        anchors {
            left: parent.left
            top : parent.top
        }
        anchors.topMargin : 10
        anchors.leftMargin: 20
    }

    Text {
        id : text_sender
        text : name_sender
        color:  "#45b582"

        anchors {
            left: avatar.right; right: parent.right
            top : parent.top
            margins:  10
        }
    }

    Text {
        id : text_date
        text : date_send
        color: "#4d597e"
        font.pointSize: 6
        anchors {
            left: avatar.right; right: parent.right
            top : text_sender.bottom
        }
        anchors.leftMargin: 10
    }

    Text {
        id : message_sender
        text : message
        wrapMode: Text.WordWrap

        width: parent.width
        color : "#ebebec"
        anchors {
            left: avatar.right; right: parent.right
            top : text_date.bottom
        }
        anchors.leftMargin: 10
        anchors.topMargin : 15
    }

    Rectangle{
        width: parent.parent.width
        height: 2
        color: "#728ad7"

        anchors {
            top : message_sender.bottom
            margins: 10
        }
    }
}

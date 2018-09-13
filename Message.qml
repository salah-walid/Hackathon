import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

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
        anchors.topMargin : 15
        anchors.leftMargin: 20
    }

    Text {
        id : text_sender
        text : name_sender
        color:  "#45b582"

        font.pointSize: 15
        anchors {
            left: avatar.right; top : parent.top
            margins:  10
        }
    }

    Text {
        id : text_date
        text : date_send
        color: "#4d597e"
        font.pointSize: 9
        anchors {
            left: avatar.right; top : text_sender.bottom
        }
        anchors.leftMargin: 10
    }

    Text {
        id : message_sender
        text : message
        wrapMode: Text.WordWrap
        font.pointSize: 13
        width: parent.width
        color : "#ebebec"
        anchors {
            left: avatar.right; top : text_date.bottom
        }
        anchors.leftMargin: 10
        anchors.topMargin : 15
    }

    Rectangle{
        width: parent.width
        height: 2
        color: "#363a3f"

        anchors {
            top : message_sender.bottom
            margins: 10
        }
    }
}

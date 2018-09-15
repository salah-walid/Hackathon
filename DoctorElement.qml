import QtQuick 2.0
import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Item {
    property string status: "Available"
    property string name: "walid"
    property string speciality: "Counsellor"
    property string description_doctor: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris"
    property string priceDa : "2000"

    height : 220


    function statusDoctor() {
        if(status=="Available"){
            return "#45b582";
        } else if(status=="Busy"){
            return "#e2ec25";
        } else if(status=="Disconnected"){
            return "#adada9";
        }
    }

    Layout.topMargin: 25
    Layout.leftMargin: 30
    anchors.left : parent.left
    anchors.right : parent.right
    anchors.rightMargin: 25
    anchors.leftMargin: 25

    Rectangle {
        id: rectangle
        color: "#1d2125"
        radius: 6
        height: parent.height
        width : parent.width

        Image {
            id: image
            width: 60
            height: 60
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            source: "icon/user-white.png"

            Rectangle {
                id: status_doctor
                x: 39
                y: 36
                width: 23
                height: 23

                color: statusDoctor()
                radius: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 1
                anchors.right: parent.right
                anchors.rightMargin: -2
            }
        }

        Text {
            id: doctorName
            fontSizeMode: Text.Fit

            color: "#45b582"
            text: qsTr(name)
            font.family: "Calibri"
            verticalAlignment: Text.AlignTop
            wrapMode: Text.WordWrap
            font.pointSize: 15
            anchors.top: image.top
            anchors.topMargin: 0
            anchors.left: image.right
            anchors.leftMargin: 25
        }

        Text {
            id: doctorSpeciality
            width: 73

            color: "#728ad7"
            text: qsTr(speciality)
            anchors.left: doctorName.left
            anchors.leftMargin: 2
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            anchors.top: doctorName.bottom
            font.pointSize: 12
            font.family: "Calibri"
            anchors.topMargin: 3
            fontSizeMode: Text.HorizontalFit
        }

        RowLayout {
            id: stars
            width: 133
            height: 31
            anchors.top: doctorSpeciality.bottom
            anchors.topMargin: 2
            anchors.left: doctorSpeciality.left
            anchors.leftMargin: -7
            //activeFocusOnTab: false
            spacing: 0

            Image {
                id: star1
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.preferredWidth: 20
                Layout.leftMargin: 6
                source: "icon/star.png"
            }

            Image {
                id: star2
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/star.png"
                Layout.preferredWidth: 20
            }

            Image {
                id: star3
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/star.png"
                Layout.preferredWidth: 20
            }

            Image {
                id: star4
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/starU.png"
                Layout.preferredWidth: 20
            }

            Image {
                id: star5
                width: 24
                height: 24
                Layout.preferredHeight: 20
                Layout.leftMargin: 6
                source: "icon/starU.png"
                Layout.preferredWidth: 20
            }
        }

        Text {
            id: description
            height: 61
            color: "#ffffff"
            text: qsTr(description_doctor)
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: image.left
            anchors.leftMargin: 0
            anchors.top: stars.bottom
            anchors.topMargin: 10
            elide: Text.ElideRight
            wrapMode: Text.WordWrap
            font.pointSize: 10
            font.family: "Calibri"

        }

        ToolButton {
            id: button_calendar

            width: 30
            height: 30
            text: qsTr("Tool Button")
            anchors.top: description.bottom
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin:15

            display: AbstractButton.IconOnly

            Image {
                id: image_calendar
                anchors.fill: parent
                source: "icon/add-event.png"
            }
        }

        ToolButton {
            id: button_messenger

            width: 30
            height: 30
            anchors.right: button_calendar.left
            anchors.rightMargin: 20
            anchors.top: description.bottom
            anchors.topMargin: 0

            display: AbstractButton.IconOnly
            onClicked: {
                //stacking.signalStack("")
            }


            Image {
                id: image_messenger
                anchors.fill: parent
                source: "icon/messenger.png"
            }
        }


        Label {
            id: price
            x: 539
            width: 54
            height: 33
            color: "#728ad7"
            fontSizeMode: Text.Fit
            text: qsTr(priceDa + " Da/H")
            font.bold: true
            anchors.right: description.right
            anchors.rightMargin: 0
            anchors.top: doctorName.top
            anchors.topMargin: 0
            lineHeight: 1.5
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignRight
        }



            Image {
                width: 30
                height: 30
                anchors.left: description.left
                anchors.leftMargin: 0
                anchors.topMargin: 0

                anchors.top: description.bottom
                id: image_anonymous

                source: "icon/anonymous.png"
            }



    }

}

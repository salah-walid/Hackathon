import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1

Item {



    RowLayout {


        ToolButton {
            Image {
                source:"icon/menu.png"
            }


            id: toolButton
            font.pixelSize: Qt.application.font.pixelSize * 1.8
        }

       Text {
           text : "Consultation"
           color: "white"
       }
    }
}

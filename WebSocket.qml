import QtQuick 2.0
import QtWebSockets 1.1

WebSocket {
    id: socket
    url: "ws://192.168.43.235:9090"
    active: true
    onTextMessageReceived: {
        listModel.append({"label": message})

    }
    onStatusChanged: {
        if (socket.status == WebSocket.Error) {
            console.log("Error: " + socket.errorString)
        } else if (socket.status == WebSocket.Open) {
            socket.sendTextMessage("je suis connecter")
        } else if (socket.status == WebSocket.Closed) {
            console.log("close ")
        }
    }
}

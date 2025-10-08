import Quickshell
import QtQuick

Scope {
  Time { id: timeSource }
  Variants {
    model: Quickshell.screens

    PanelWindow {
      color: "transparent"
      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      Rectangle {
        anchors.fill: parent
        radius: 15
        color: "#A6000000"
      }

      ClockWidget {
        anchors.centerIn: parent

        time: timeSource.time

      }
    }
  }
}

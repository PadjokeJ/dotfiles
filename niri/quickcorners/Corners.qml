import QtQuick
import Quickshell

Scope {
  PanelWindow {
    id: bottomLeft
    anchors {
      bottom: true
      left: true
    }
    implicitWidth: 20
    implicitHeight: 20
    color: "transparent"

    Canvas {
      anchors.fill: parent
      onPaint: {
        var ctx = getContext("2d");
        ctx.clearRect(0, 0, width, height);

        var radius = 25;
        ctx.fillStyle = "#cc000000";
        ctx.beginPath();
        ctx.moveTo(0, height - radius);
        ctx.quadraticCurveTo(0, height, radius, height);
        ctx.lineTo(0, height);
        ctx.closePath();
        ctx.fill();
      }
    }
  }
  PanelWindow {
    id: bottomRight
    anchors {
      bottom: true
      right: true
    }
    implicitWidth: 20
    implicitHeight: 20
    color: "transparent"

    Canvas {
      anchors.fill: parent
      onPaint: {
        var ctx = getContext("2d");
        ctx.clearRect(0, 0, width, height);

        var radius = 25;
        ctx.fillStyle = "#cc000000";
        ctx.beginPath();
        ctx.moveTo(width - radius, height);
        ctx.quadraticCurveTo(width, height, width, height - radius);
        ctx.lineTo(width, height);
        ctx.closePath();
        ctx.fill();
      }
    }
  }
  PanelWindow {
    id: topLeft
    anchors {
      top: true
      left: true
    }
    implicitWidth: 20
    implicitHeight: 20
    color: "transparent"

    Canvas {
      anchors.fill: parent
      onPaint: {
        var ctx = getContext("2d");
        ctx.clearRect(0, 0, width, height);

        var radius = 25;
        ctx.fillStyle = "#cc000000";
        ctx.beginPath();
        ctx.moveTo(0, radius);
        ctx.quadraticCurveTo(0, 0, radius, 0);
        ctx.lineTo(0, 0);
        ctx.closePath();
        ctx.fill();
      }
    }
  }
  PanelWindow {
    id: topRight
    anchors {
      top: true
      right: true
    }
    implicitWidth: 20
    implicitHeight: 20
    color: "transparent"

    Canvas {
      anchors.fill: parent
      onPaint: {
        var ctx = getContext("2d");
        ctx.clearRect(0, 0, width, height);

        var radius = 25;
        ctx.fillStyle = "#cc000000";
        ctx.beginPath();
        ctx.moveTo(width - radius, 0);
        ctx.quadraticCurveTo(width, 0, width, radius);
        ctx.lineTo(width, 0);
        ctx.closePath();
        ctx.fill();
      }
    }
  }
}

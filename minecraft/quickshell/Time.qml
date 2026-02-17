import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  id: root
  property string time
  
  SystemClock {
		id: clock
	}


  Process {
    id: dateProc
    command: ["date"]
    running: true

    stdout: StdioCollector {
      onStreamFinished: root.time = Qt.formatDateTime(clock.date, "hh:mm")
    }
  }

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: dateProc.running = true
  }
}

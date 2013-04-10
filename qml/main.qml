import QtQuick 2.0

Item {
	property bool landscape: width > height
	width: 480;
	height: 640;

	Header {
		anchors { top: parent.top; left: parent.left; right: parent.right }
		height: Math.round(parent.height / 10)
	}
}

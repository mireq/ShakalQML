import QtQuick 2.0

Rectangle {
	property bool landscape: width > height
	width: 480
	height: 640

	color: "#eeeeee"

	DiscussionRSS {
		id: discussion
		anchors { top: header.bottom; left: parent.left; right: parent.right; bottom: parent.bottom }
	}

	Header {
		id: header
		anchors { top: parent.top; left: parent.left; right: parent.right }
		height: Math.round(parent.height / 10)
	}
}

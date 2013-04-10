import QtQuick 2.0

Rectangle {
	property string title: "LinuxOS.sk"

	width: 300;
	height: 100;
	color: "blue";

	Image {
		id: logo
		source: "logo.png"
		anchors { left: parent.left; top: parent.top; bottom: parent.bottom; leftMargin: 10; rightMargin: 10 }
		width: parent.height
		smooth: true
	}

	Text {
		id: text
		text: title
		anchors { left: logo.right; top: parent.top; bottom: parent.bottom; right: parent.right }
		font { pixelSize: parent.height / 2; weight: Font.Bold }
		verticalAlignment: Text.AlignVCenter
		style: Text.Raised
		styleColor: "#80000000"
		elide: Text.ElideRight
		color: "white"
	}

	gradient: Gradient {
		GradientStop { position: 0.0; color: "#388cc7" }
		GradientStop { position: 1.0; color: "#58aeea" }
	}
}

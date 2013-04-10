import QtQuick 2.0

Rectangle {
	width: 300;
	height: 100;
	color: "blue";

	 gradient: Gradient {
		GradientStop { position: 0.0; color: "#388cc7" }
		GradientStop { position: 1.0; color: "#58aeea" }
	}
}

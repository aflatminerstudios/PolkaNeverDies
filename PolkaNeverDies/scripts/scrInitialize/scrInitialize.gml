
enum AspectRatio {
	FULL_SCREEN,
	WIDE_SCREEN
}


global.aspectRatio = AspectRatio.FULL_SCREEN;
global.prevAspectRatio = global.aspectRatio;

scrUpdateWindowSettings()

randomize();
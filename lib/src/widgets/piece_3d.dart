import 'package:chessground/chessground.dart';
import 'package:flutter/widgets.dart';

/// Widget that displays a 3D chess piece.
class PieceWidget3D extends PieceWidget {
	const PieceWidget3D({
			super.key,
			required super.piece,
			required super.size,
			required super.pieceAssets,
			super.opacity,
			super.blindfoldMode = false,
			super.upsideDown = false,
			});

	@override
		Widget build(BuildContext context) {
			if (blindfoldMode) {
				return SizedBox(width: size, height: size);
			}

			final cachedImage = ChessgroundImages.instance.get(imageProvider);
			if (cachedImage == null) {
				// Transparent but opaque to hit tests, so Draggable children remain
				// interactive while the image loads.
				return SizedBox.square(dimension: size, child: const ColoredBox(color: Color(0x00000000)));
			}

			final image = RawImage(
					image: cachedImage,
					debugImageLabel: 'PieceWidgetCache(${imageProvider.assetName})',
					height: size,
					opacity: opacity,
					);

			return upsideDown ? Transform.flip(flipY: true, child: image) : image;
		}
}

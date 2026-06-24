import 'package:chessground/chessground.dart';
import 'package:dartchess/dartchess.dart' show Piece;
import 'package:flutter/widgets.dart';
import '../models.dart';
import '../images.dart';

/// Widget that displays a chess piece.
class PieceWidget extends StatelessWidget {
  const PieceWidget({
    super.key,
    required this.piece,
    required this.size,
    required this.pieceAssets,
    this.opacity,
    this.blindfoldMode = false,
    this.upsideDown = false,
  });

  /// Specifies the role and color of the piece.
  final Piece piece;

  /// Size of the board square the piece will occupy.
  final double size;

  /// Piece set assets.
  final PieceAssets pieceAssets;

  /// Pieces are hidden in blindfold mode.
  final bool blindfoldMode;

  /// If `true` the piece is displayed flipped on Y axis.
  final bool upsideDown;

  /// This value is used to animate the opacity of the piece.
  final Animation<double>? opacity;

  /// If 'true' piece height and width is different than the square's size
  bool get is3d => pieceAssets.is3d;

  /// [AssetImage] provider for the piece.
  AssetImage get imageProvider => pieceAssets[piece.kind]!;

  @override
  Widget build(BuildContext context) {
    if (blindfoldMode) {
      return SizedBox(width: size, height: size);
    }

    final fromCache = ChessgroundImages.instance.get(imageProvider);

    double imageOffsetDy = 0;
    double imageOffsetDx = 0;
    double? imageWidth = size;
    double imageHeight = size;

    if (is3d) {
      imageOffsetDy = -50;
      imageOffsetDx = -15;
      imageHeight = size*1.8;
      imageWidth = null;
    }

    final image = Transform.translate(
      offset: Offset(imageOffsetDx, imageOffsetDy),
      child:
          fromCache != null
              ? RawImage(
                image: fromCache,
                debugImageLabel: 'PieceWidgetCache(${imageProvider.assetName})',
                width: imageWidth,
                height: imageHeight,
                opacity: opacity,
              )
              : Image(
                image: imageProvider,
                width: imageWidth,
                height: imageHeight,
                opacity: opacity,
              ),
    );

    return upsideDown ? Transform.flip(flipY: true, child: image) : image;
  }
}

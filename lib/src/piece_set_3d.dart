import 'package:dartchess/dartchess.dart';
import 'package:flutter/widgets.dart';
import 'models.dart';

const _pieceSetsPath = 'assets/piece_sets';

// A 3D piece set and its corresponding piece assets.
enum PieceSet3D {
	experimental('Experimental', PieceSet3D.experimentalAssets);

	const PieceSet3D(this.label, this.assets);

	/// The label of this [PieceSet3D].
	final String label;

	/// The [PieceAssets] for this [PieceSet3D].
	final PieceAssets assets;


	/// The [PieceAssets] for the 'Experimental' piece set.
	static const PieceAssets experimentalAssets = {
		PieceKind.blackRook: AssetImage('$_pieceSetsPath/experimental/Black-Rook.png', package: 'chessground'),
		PieceKind.blackPawn: AssetImage('$_pieceSetsPath/experimental/Black-Pawn.png', package: 'chessground'),
		PieceKind.blackKnight: AssetImage('$_pieceSetsPath/experimental/Black-Knight.png', package: 'chessground'),
		PieceKind.blackBishop: AssetImage('$_pieceSetsPath/experimental/Black-Bishop.png', package: 'chessground'),
		PieceKind.blackQueen: AssetImage('$_pieceSetsPath/experimental/Black-Queen.png', package: 'chessground'),
		PieceKind.blackKing: AssetImage('$_pieceSetsPath/experimental/Black-King.png', package: 'chessground'),
		PieceKind.whiteRook: AssetImage('$_pieceSetsPath/experimental/White-Rook.png', package: 'chessground'),
		PieceKind.whitePawn: AssetImage('$_pieceSetsPath/experimental/White-Pawn.png', package: 'chessground'),
		PieceKind.whiteKnight: AssetImage('$_pieceSetsPath/experimental/White-Knight.png', package: 'chessground'),
		PieceKind.whiteBishop: AssetImage('$_pieceSetsPath/experimental/White-Bishop.png', package: 'chessground'),
		PieceKind.whiteQueen: AssetImage('$_pieceSetsPath/experimental/White-Queen.png', package: 'chessground'),
		PieceKind.whiteKing: AssetImage('$_pieceSetsPath/experimental/White-King.png', package: 'chessground'),
	};

}

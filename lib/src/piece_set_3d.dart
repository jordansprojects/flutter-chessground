import 'package:dartchess/dartchess.dart';
import 'package:flutter/widgets.dart';
import 'models.dart';

const _pieceSetsPath = 'assets/piece_sets';

// A 3D piece set and its corresponding piece assets.
enum PieceSet3D {
	basic('Basic', PieceSet3D.basicAssets),
	experimental('Experimental', PieceSet3D.experimentalAssets),
	redvblue('RedVBlue', PieceSet3D.redvblueAssets),
	trimmed('Trimmed', PieceSet3D.trimmedAssets),
	modernwood('ModernWood', PieceSet3D.modernwoodAssets),
	wood('Wood', PieceSet3D.woodAssets);

	const PieceSet3D(this.label, this.assets);

	/// The label of this [PieceSet3D].
	final String label;

	/// The [PieceAssets] for this [PieceSet3D].
	final PieceAssets assets;

	/// The [PieceAssets] for the 'Basic' piece set.
	static const PieceAssets basicAssets = {
		PieceKind.blackRook: AssetImage('$_pieceSetsPath/basic/Black-Rook.png', package: 'chessground'),
		PieceKind.blackPawn: AssetImage('$_pieceSetsPath/basic/Black-Pawn.png', package: 'chessground'),
		PieceKind.blackKnight: AssetImage('$_pieceSetsPath/basic/Black-Knight.png', package: 'chessground'),
		PieceKind.blackBishop: AssetImage('$_pieceSetsPath/basic/Black-Bishop.png', package: 'chessground'),
		PieceKind.blackQueen: AssetImage('$_pieceSetsPath/basic/Black-Queen.png', package: 'chessground'),
		PieceKind.blackKing: AssetImage('$_pieceSetsPath/basic/Black-King.png', package: 'chessground'),
		PieceKind.whiteRook: AssetImage('$_pieceSetsPath/basic/White-Rook.png', package: 'chessground'),
		PieceKind.whitePawn: AssetImage('$_pieceSetsPath/basic/White-Pawn.png', package: 'chessground'),
		PieceKind.whiteKnight: AssetImage('$_pieceSetsPath/basic/White-Knight.png', package: 'chessground'),
		PieceKind.whiteBishop: AssetImage('$_pieceSetsPath/basic/White-Bishop.png', package: 'chessground'),
		PieceKind.whiteQueen: AssetImage('$_pieceSetsPath/basic/White-Queen.png', package: 'chessground'),
		PieceKind.whiteKing: AssetImage('$_pieceSetsPath/basic/White-King.png', package: 'chessground'),
	};

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

	/// The [PieceAssets] for the 'RedVBlue' piece set.
	static const PieceAssets redvblueAssets = {
		PieceKind.blackRook: AssetImage('$_pieceSetsPath/redvblue/Black-Rook.png', package: 'chessground'),
		PieceKind.blackPawn: AssetImage('$_pieceSetsPath/redvblue/Black-Pawn.png', package: 'chessground'),
		PieceKind.blackKnight: AssetImage('$_pieceSetsPath/redvblue/Black-Knight.png', package: 'chessground'),
		PieceKind.blackBishop: AssetImage('$_pieceSetsPath/redvblue/Black-Bishop.png', package: 'chessground'),
		PieceKind.blackQueen: AssetImage('$_pieceSetsPath/redvblue/Black-Queen.png', package: 'chessground'),
		PieceKind.blackKing: AssetImage('$_pieceSetsPath/redvblue/Black-King.png', package: 'chessground'),
		PieceKind.whiteRook: AssetImage('$_pieceSetsPath/redvblue/White-Rook.png', package: 'chessground'),
		PieceKind.whitePawn: AssetImage('$_pieceSetsPath/redvblue/White-Pawn.png', package: 'chessground'),
		PieceKind.whiteKnight: AssetImage('$_pieceSetsPath/redvblue/White-Knight.png', package: 'chessground'),
		PieceKind.whiteBishop: AssetImage('$_pieceSetsPath/redvblue/White-Bishop.png', package: 'chessground'),
		PieceKind.whiteQueen: AssetImage('$_pieceSetsPath/redvblue/White-Queen.png', package: 'chessground'),
		PieceKind.whiteKing: AssetImage('$_pieceSetsPath/redvblue/White-King.png', package: 'chessground'),
	};

	/// The [PieceAssets] for the 'Trimmed' piece set.
	static const PieceAssets trimmedAssets = {
		PieceKind.blackRook: AssetImage('$_pieceSetsPath/trimmed/Black-Rook.png', package: 'chessground'),
		PieceKind.blackPawn: AssetImage('$_pieceSetsPath/trimmed/Black-Pawn.png', package: 'chessground'),
		PieceKind.blackKnight: AssetImage('$_pieceSetsPath/trimmed/Black-Knight.png', package: 'chessground'),
		PieceKind.blackBishop: AssetImage('$_pieceSetsPath/trimmed/Black-Bishop.png', package: 'chessground'),
		PieceKind.blackQueen: AssetImage('$_pieceSetsPath/trimmed/Black-Queen.png', package: 'chessground'),
		PieceKind.blackKing: AssetImage('$_pieceSetsPath/trimmed/Black-King.png', package: 'chessground'),
		PieceKind.whiteRook: AssetImage('$_pieceSetsPath/trimmed/White-Rook.png', package: 'chessground'),
		PieceKind.whitePawn: AssetImage('$_pieceSetsPath/trimmed/White-Pawn.png', package: 'chessground'),
		PieceKind.whiteKnight: AssetImage('$_pieceSetsPath/trimmed/White-Knight.png', package: 'chessground'),
		PieceKind.whiteBishop: AssetImage('$_pieceSetsPath/trimmed/White-Bishop.png', package: 'chessground'),
		PieceKind.whiteQueen: AssetImage('$_pieceSetsPath/trimmed/White-Queen.png', package: 'chessground'),
		PieceKind.whiteKing: AssetImage('$_pieceSetsPath/trimmed/White-King.png', package: 'chessground'),
	};

	/// The [PieceAssets] for the 'Wood' piece set.
	static const PieceAssets woodAssets = {
		PieceKind.blackRook: AssetImage('$_pieceSetsPath/wood/Black-Rook.png', package: 'chessground'),
		PieceKind.blackPawn: AssetImage('$_pieceSetsPath/wood/Black-Pawn.png', package: 'chessground'),
		PieceKind.blackKnight: AssetImage('$_pieceSetsPath/wood/Black-Knight.png', package: 'chessground'),
		PieceKind.blackBishop: AssetImage('$_pieceSetsPath/wood/Black-Bishop.png', package: 'chessground'),
		PieceKind.blackQueen: AssetImage('$_pieceSetsPath/wood/Black-Queen.png', package: 'chessground'),
		PieceKind.blackKing: AssetImage('$_pieceSetsPath/wood/Black-King.png', package: 'chessground'),
		PieceKind.whiteRook: AssetImage('$_pieceSetsPath/wood/White-Rook.png', package: 'chessground'),
		PieceKind.whitePawn: AssetImage('$_pieceSetsPath/wood/White-Pawn.png', package: 'chessground'),
		PieceKind.whiteKnight: AssetImage('$_pieceSetsPath/wood/White-Knight.png', package: 'chessground'),
		PieceKind.whiteBishop: AssetImage('$_pieceSetsPath/wood/White-Bishop.png', package: 'chessground'),
		PieceKind.whiteQueen: AssetImage('$_pieceSetsPath/wood/White-Queen.png', package: 'chessground'),
		PieceKind.whiteKing: AssetImage('$_pieceSetsPath/wood/White-King.png', package: 'chessground'),
	};

	/// The [PieceAssets] for the 'ModernWood' piece set.
	static const PieceAssets modernwoodAssets = {
		PieceKind.blackRook: AssetImage('$_pieceSetsPath/modernwood/Black-Rook.png', package: 'chessground'),
		PieceKind.blackPawn: AssetImage('$_pieceSetsPath/modernwood/Black-Pawn.png', package: 'chessground'),
		PieceKind.blackKnight: AssetImage('$_pieceSetsPath/modernwood/Black-Knight.png', package: 'chessground'),
		PieceKind.blackBishop: AssetImage('$_pieceSetsPath/modernwood/Black-Bishop.png', package: 'chessground'),
		PieceKind.blackQueen: AssetImage('$_pieceSetsPath/modernwood/Black-Queen.png', package: 'chessground'),
		PieceKind.blackKing: AssetImage('$_pieceSetsPath/modernwood/Black-King.png', package: 'chessground'),
		PieceKind.whiteRook: AssetImage('$_pieceSetsPath/modernwood/White-Rook.png', package: 'chessground'),
		PieceKind.whitePawn: AssetImage('$_pieceSetsPath/modernwood/White-Pawn.png', package: 'chessground'),
		PieceKind.whiteKnight: AssetImage('$_pieceSetsPath/modernwood/White-Knight.png', package: 'chessground'),
		PieceKind.whiteBishop: AssetImage('$_pieceSetsPath/modernwood/White-Bishop.png', package: 'chessground'),
		PieceKind.whiteQueen: AssetImage('$_pieceSetsPath/modernwood/White-Queen.png', package: 'chessground'),
		PieceKind.whiteKing: AssetImage('$_pieceSetsPath/modernwood/White-King.png', package: 'chessground'),
	};

}

import 'package:flutter_test/flutter_test.dart';

import 'package:chessground/src/piece_set.dart';

void main() {


  test('2D PieceAssets are recognized as 2D', () {
    expect(PieceSet.alpha.assets.is3d, false);    
  });

  test('3D PieceAssets are recognized as 3D', () {
    expect(PieceSet.experimental.assets.is3d, true);
  });

}

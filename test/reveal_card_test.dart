import 'package:flutter_test/flutter_test.dart';

import 'package:reveal_card/reveal_card.dart';

void main() {
  test('adds one to input values', () {
    final revealCard = RevealCard();
    expect(revealCard.addOne(2), 3);
    expect(revealCard.addOne(-7), -6);
    expect(revealCard.addOne(0), 1);
  });
}

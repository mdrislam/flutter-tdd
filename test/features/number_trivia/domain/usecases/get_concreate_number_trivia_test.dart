import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/features/number_trivia/data/repositories/number_trivia_repositories.dart';
import 'package:flutter_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd/features/number_trivia/domain/usecases/get_concreate_number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreateNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  mockNumberTriviaRepository = MockNumberTriviaRepository();
  usecase = GetConcreateNumberTrivia(
      numberTriviaRepository: mockNumberTriviaRepository);

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'should trivia for the number from the repository',
    () async {
      //arrange
      when(() => mockNumberTriviaRepository
          .getConcreateNumberTrivia(any())
          .then((_) async => const Right(tNumberTrivia)));

      //act
      final result = await usecase(const Params(number: tNumber));
      //assert
      expect(result, const Right(tNumberTrivia));
      verify(
          () => mockNumberTriviaRepository.getConcreateNumberTrivia(tNumber));
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/features/number_trivia/core/error/failure.dart';
import 'package:flutter_tdd/features/number_trivia/data/repositories/number_trivia_repositories.dart';
import 'package:flutter_tdd/features/number_trivia/domain/entities/number_trivia.dart';

class GetConcreateNumberTrivia {
  final NumberTriviaRepository numberTriviaRepository;
  GetConcreateNumberTrivia({
    required this.numberTriviaRepository,
  });
  Future<Either<Failure, NumberTrivia>> execute({required int number}) async {
    return await numberTriviaRepository.getConcreateNumberTrivia(number);
  }
}

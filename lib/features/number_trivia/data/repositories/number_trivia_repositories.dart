import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/features/number_trivia/core/error/failure.dart';
import 'package:flutter_tdd/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreateNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}

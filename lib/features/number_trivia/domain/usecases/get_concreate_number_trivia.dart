import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/features/number_trivia/core/error/failure.dart';
import 'package:flutter_tdd/features/number_trivia/core/use_case/use_case.dart';
import 'package:flutter_tdd/features/number_trivia/data/repositories/number_trivia_repositories.dart';
import 'package:flutter_tdd/features/number_trivia/domain/entities/number_trivia.dart';

class GetConcreateNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository numberTriviaRepository;
  GetConcreateNumberTrivia({
    required this.numberTriviaRepository,
  });
  
  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await numberTriviaRepository.getConcreateNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});
  @override
  List<Object?> get props => throw UnimplementedError();
}

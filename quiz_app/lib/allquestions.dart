import 'qanda.dart';

class Allquestions {

    List <Qanda> ques = [];

    Allquestions ({required this.ques});

}

List <Qanda> questions = [
    Qanda (question: 'I am a human.', answer: false),
    Qanda (question: 'Prince Harry is taller than Prince William', answer: false),
    Qanda(question: 'Waterloo has the greatest number of tube platforms in London', answer: true),
    Qanda(question: 'Gin is typically included in a Long Island Iced Tea', answer: true),
    Qanda(question: 'Cinderella was the first Disney princess', answer: false),
    Qanda(question: 'Marrakesh is the capital of Morocco.', answer: false),
    Qanda(question: 'The unicorn is the national animal of Scotland.', answer: true),
    Qanda(question: '"A" is the most common letter used in the English language.', answer: false),
    Qanda(question: "A lion's roar can be heard up to eight kilometers away.", answer: true),
    Qanda(question: 'Goldfish only have a memory of three seconds.', answer: false),
    Qanda(question: 'Seahorses have no teeth or stomach.', answer: true)
  ];

 Allquestions qlist = Allquestions(ques: questions);

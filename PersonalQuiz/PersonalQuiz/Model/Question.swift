//
//  Question.swift
//  PersonalQuiz
//
//  Created by Алина Ражева on 09.11.2022.
//

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

extension Question {
    //static - чтобы сразу можно было обратиться к методу без экземпляров:
    static func getQuestions() -> [Question] {
        return [
        Question(
            text: "What food do you like?",
            type: .single,
            answers: [
                Answer(text: "Fruits", type: .monkey),
                Answer(text: "Meat", type: .dog),
                Answer(text: "Fish", type: .frog),
                Answer(text: "Vegetables", type: .fox)
            ]
        ),
        Question(
            text: "What do you like the most?",
            type: .multiple,
            answers: [
                Answer(text: "Embrace", type: .monkey),
                Answer(text: "Eat", type: .dog),
                Answer(text: "Swim", type: .frog),
                Answer(text: "Run", type: .fox)
                ]
            ),
        Question(
            text: "Do you like travel by car?",
            type: .ranged,
            answers: [
                Answer(text: "Hate it", type: .monkey),
                Answer(text: "Not at all", type: .dog),
                Answer(text: "So-so", type: .frog),
                Answer(text: "Love it", type: .fox)
                ]
            )
        ]
    }
}


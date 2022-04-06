//
//  QuestionBrain.swift
//  whyAmI
//
//  Created by Jinah Park on 2022/04/06.
//

import Foundation

struct QuestionBrain {
    
    var questionNumber = 0
    
    let questions = [
        Question(
            title: "나는 요즘 집중을 잘 할 수 없다.",
            choice1: "예", choice1Destination: 1,
            choice2: "아니오", choice2Destination: 5
        ),
        Question(
            title: "집중을 못하게 된 것은 비교적 최근의 일이다.",
            choice1: "예", choice1Destination: 5,
            choice2: "아니오", choice2Destination: 2
        ),
        Question(
            title: "어려서부터 종종 산만하다는 소리를 듣곤 했다.",
            choice1: "예", choice1Destination: 3,
            choice2: "아니오", choice2Destination: 5
        ),
        Question(
            title: "충동적인 부분이 있다.",
            choice1: "예", choice1Destination: 4,
            choice2: "아니오", choice2Destination: 5
        ),
        Question(
            title: "ADHD가 의심됩니다. 병원에 가보세요.",
            choice1: "THE", choice1Destination: 0,
            choice2: "END", choice2Destination: 0
        ),
        Question(
            title: "ADHD가 의심되지 않습니다.",
            choice1: "THE", choice1Destination: 0,
            choice2: "END", choice2Destination: 0
        )
    ]
    
    func getQuestionTitle() -> String {
        return questions[questionNumber].title
    }
    
    func getChoice1() -> String {
        return questions[questionNumber].choice1
    }
    
    func getChoice2() -> String {
        return questions[questionNumber].choice2
    }
    
    mutating func nextQuestion(userChoice: String) {
        
        let currentQuestion = questions[questionNumber]
        if userChoice == currentQuestion.choice1 {
            questionNumber = currentQuestion.choice1Destination
        } else if userChoice == currentQuestion.choice2 {
            questionNumber = currentQuestion.choice2Destination
        }
    }
    
}

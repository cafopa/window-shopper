import UIKit

protocol Number{
    var floatValue: Float { get }
    
}

extension Float: Number {
    var floatValue: Float {
        return self
    }
}

extension Double: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension Int: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension UInt: Number {
    var floatValue: Float {
        return Float(self)
    }
}

func +(valueA: Number, ValueB: Number) -> Float{
    return valueA.floatValue + valueA.floatValue
}

func -(valueA: Number, ValueB: Number) -> Float{
    return valueA.floatValue - valueA.floatValue
}

func /(valueA: Number, ValueB: Number) -> Float{
    return valueA.floatValue / valueA.floatValue
}

func *(valueA: Number, ValueB: Number) -> Float{
    return valueA.floatValue * valueA.floatValue
}

let x: Double = 1.235
let y: Int = 6
let q = x / y

class question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

enum QuestionType: String {
    case trueFalse = "The sky is blue"
    case multipleChoice = "Who is that"
    case shortAnswer = "What is the capital of Denmark?"
    case essay = "Tell a short story"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True"
    case multipleChoice = "Santa"
    case shortAnswer = "Copenhagen?"
    case essay = "... ... ..."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQustion() -> question
}

class Quiz: QuestionGenerator{
    func generateRandomQustion() -> question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = question(type: randomType, query: randomQuery, answer: randomAnswer)
    
        return randomQuestion
    }
}
let quiz = Quiz()
let question = quiz.generateRandomQustion()
print("Question type: )



//
//  AnimalType.swift
//  PersonalQuiz
//
//  Created by Алина Ражева on 09.11.2022.
//

enum AnimalType: String {
    case dog = "🐶"
    case fox = "🦊"
    case frog = "🐸"
    case monkey = "🐒"
    
    var definition: String {
        switch self {
        case .dog:
            return "You're friendly person and always happy to see your relatives. But anyway don't trust too much."
        case .fox:
            return "You like freedom and always want to know something new. You don't afraid difficulties."
        case .frog:
            return "You don't have phobias. You are always full of energy and want try new activities."
        case .monkey:
            return "You like being with friends, parties, lots of activities and fresh fruits."
        }
    }
}

//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Алина Ражева on 09.11.2022.
//

import UIKit

class ResultsViewController: UIViewController {

    // MARK: - IB Outlets:
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDescriptionLabel: UILabel!
    
    // MARK: - Public Properties:
    var responses: [Answer]!    // неявно извлеченный опционал
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        navigationItem.hidesBackButton = true       //скрыть кнопку назад
        updateResults()
    }
    
    private func updateResults() {
        var frequencyOfAnimals: [AnimalType:Int] = [:]
        let animals = responses.map { $0.type }
        
        for animal in animals {
            frequencyOfAnimals[animal] = (frequencyOfAnimals[animal] ?? 0) + 1
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        
        // извлечение опционала через guard:
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: AnimalType) {
        resultAnswerLabel.text = "You are \(animal.rawValue)"
        resultDescriptionLabel.text = "\(animal.definition)"
    }
}


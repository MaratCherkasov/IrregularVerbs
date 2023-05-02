//
//  IrregularVerbs.swift
//  MVCLesson
//
//  Created by Marat Cherkasov on 19.04.2023.
//

import UIKit

final class IrregularVerbs {
    
    // Singleton
    static var shared = IrregularVerbs()
    private init() {
        configureVerbs()
    }
    
    // MARK: - Properties
    var selectedVerbs: [Verb] = []
    
    private(set) var verbs: [Verb] = []
    
    // MARK: - Methods
    private func configureVerbs() {
        verbs = [
            Verb(infinitive: "arise", pastSimple: "arose", participle: "arisen"),
            Verb(infinitive: "awake", pastSimple: "awoke", participle: "awoken"),
            Verb(infinitive: "be", pastSimple: "was", participle: "been"),
            Verb(infinitive: "bear", pastSimple: "bore", participle: "born"),
            Verb(infinitive: "beat", pastSimple: "beat", participle: "beaten"),
            Verb(infinitive: "become", pastSimple: "became", participle: "become"),
            Verb(infinitive: "begin", pastSimple: "began", participle: "begun"),
            Verb(infinitive: "bend", pastSimple: "bent", participle: "bent"),
            Verb(infinitive: "bet", pastSimple: "bet", participle: "bet"),
            Verb(infinitive: "bind", pastSimple: "bound", participle: "bound"),
            Verb(infinitive: "bite", pastSimple: "bit", participle: "bitten")
        ]
        
        selectedVerbs = verbs
    }
}

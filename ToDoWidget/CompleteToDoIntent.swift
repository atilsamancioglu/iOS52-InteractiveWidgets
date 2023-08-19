//
//  CompleteToDoIntent.swift
//  InteractiveWidgetKit
//
//  Created by Atil Samancioglu on 19.08.2023.
//

import Foundation
import SwiftUI
import AppIntents

struct CompleteToDoIntent : AppIntent {
    
    static var title: LocalizedStringResource = "Complete To Do"
    
    @Parameter(title:"ToDo ID")
    var id : String
    
    init() {
        
    }
    
    init(id: String) {
        self.id = id
    }
    
    func perform() async throws -> some IntentResult {
        //this is where we update db, or do whatever we want to at the outcome of widget interaction
        if let index = SharedDatas.shared.toDos.firstIndex(where: {
            $0.id  == id
            }) {
            SharedDatas.shared.toDos[index].isDone.toggle()
            print("database updated")
        }
        return .result()
    }
    
    
}

//
//  ToDo.swift
//  InteractiveWidgetKit
//
//  Created by Atil Samancioglu on 19.08.2023.
//

import Foundation

struct ToDo : Identifiable {
    let id : String = UUID().uuidString
    var name: String
    var isDone : Bool = false
}


class SharedDatas {
    static let shared = SharedDatas()

    var toDos : [ToDo] = [
        .init(name: "Test1"),
        .init(name: "Test2"),
        .init(name: "Test3")
    ]
}



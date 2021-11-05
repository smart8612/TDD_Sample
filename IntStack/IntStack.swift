//
//  IntStack.swift
//  IntStack
//
//  Created by JeongTaek Han on 2021/11/04.
//

import Foundation

// Point: 테스트를 작성 후 구현 코드를 작성한 것이 중요하다.

class IntStack {
    var items: [Int]
    
    init(_ input: [Int]) {
        self.items = input
    }
    
    convenience init() {
        self.init([])
    }
    
    func push(_ input: Int) {
        self.items.append(input)
    }
    
    @discardableResult // 경고창 무시해주는 기능
    func pop() -> Int {
        return self.items.removeLast()
    }
}

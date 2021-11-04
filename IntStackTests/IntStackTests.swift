//
//  IntStackTests.swift
//  IntStackTests
//
//  Created by JeongTaek Han on 2021/11/04.
//

import XCTest

class IntStackTests: XCTestCase {
    
    func test_빈_스택에_1을_push하면_1이_남는다() {
        let stack = IntStack()
        stack.push(1)
        XCTAssertEqual(stack.items, [1])
    }
    
    func test_1이_있는_스택에_2를_push하면_1과_2가_남는다() {
        let stack = IntStack([1])
        stack.push(2)
        XCTAssertEqual(stack.items, [1, 2])
    }

    func test_1이_있는_스택을_pop하면_빈_스택이_된다() {
        let stack = IntStack([1])
        stack.pop()
        XCTAssertTrue(stack.items.isEmpty)
    }

    func test_1과2가_있는_스택을_pop하면_1이_남는다() {
        let stack = IntStack([1, 2])
        stack.pop()
        XCTAssertEqual(stack.items, [1])
    }
}

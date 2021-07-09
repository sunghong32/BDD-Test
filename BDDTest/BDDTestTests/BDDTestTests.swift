//
//  BDDTestTests.swift
//  BDDTestTests
//
//  Created by 민성홍 on 2021/07/07.
//

import Quick
import Nimble
@testable import BDDTest

class BDDTestTests: QuickSpec {
    let math = Calculator()
    var firstNum = 0
    var secondNum = 0
    var display = 0
    var operation = ""
    var result = 0
    var resultOperation = ""

    override func spec() {
        describe("뷰가 로드 되면 화면에 0표시") {
            display = 0
            context("사용자가 숫자 2를 누르면") {
                firstNum = 2
            }
            context("사용자가 +를 누르면") {
                operation = "+"
            }
            context("사용자가 숫자 4를 누르면") {
                secondNum = 4
            }
            context("사용자가 =를 누르면") {
                resultOperation = "="
                if resultOperation == "=" {
                    display = math.addNumbers(x: firstNum, y: secondNum)
                    it("연산 결과를 화면에 표시") {
                        expect(self.display).to(equal(6))
                    }
                }
            }
        }
    }
}

class Calculator {
    func addNumbers(x: Int, y: Int) -> Int {
        return x + y
    }

    func minusNumbers(x: Int, y: Int) -> Int {
        return x - y
    }

    func multiplyNumbers(x: Int, y: Int) -> Int {
        return x * y
    }

    func divideNumbers(x: Float, y: Float) -> Float {
        return x / y
    }
}

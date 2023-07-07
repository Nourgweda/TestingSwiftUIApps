//
//  ConvertersTest.swift
//  ConvertersTest
//
//  Created by Nour Gweda on 03/07/2023.
//

import XCTest

final class ConvertersTest: XCTestCase {

    private var sut: Converters!

    override func setUpWithError() throws {
        // what we write here runs BEFORE each function
        sut = Converters()
    }

    override func tearDownWithError() throws {
        // what we write here runs AFTER each function
        sut = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testConvert10Returns1080() {
        let actual = sut.convertEuroToUSD(euro: "10")
        let expected = "$10.80"
        XCTAssertEqual(actual, expected)
    }

    func testConvert10ReturnsError() {
        let actual = sut.convertEuroToUSD(euro: "10")
        let expected = "10.80"
        XCTAssertEqual(actual, expected)
    }

    func testConvertWrongInputReturnsError() {
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expected = "10.80"
        XCTAssertEqual(actual, expected)
    }

    func testConvertNegativeNumbReturnsError() {
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expected = "please enter a positive number"
        XCTAssertEqual(actual, expected)
    }

    func testConvertEmptyInputReturnsError() {
        let actual = sut.convertEuroToUSD(euro: "")
        let expected = "please enter a positive number"
        XCTAssertEqual(actual, expected)
    }

    func testConvertTextyInputReturnsError() {
        let actual = sut.convertEuroToUSD(euro: "Nour")
        let expected = "please enter a positive number"
        XCTAssertEqual(actual, expected)
    }

    func testConvertDecimalyInputReturnsError() {
        let actual = sut.convertEuroToUSD(euro: "759.126")
        let expected = "$819.85608"
        XCTAssertEqual(actual, expected)
    }

    func testConvertMillionyInputReturnsError() {
        let actual = sut.convertEuroToUSD(euro: "1000000")
        let expected = "value too big to convert"
        XCTAssertEqual(actual, expected)
    }
}

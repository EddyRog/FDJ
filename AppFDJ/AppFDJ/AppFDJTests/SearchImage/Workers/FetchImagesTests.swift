//
// FetchImagesTests.swift
// AppFDJTests
// Created in 2022
// Swift 5.0

import Foundation

import XCTest
@testable import AppFDJ

class FetchImagesTests: XCTestCase {
    var sutWorker: SearchImagesWorker!
//    var searchImagesObjcFAKE: SearchImagesObjcFAKE!

    override func setUpWithError() throws {
        try super.setUpWithError()
//        searchImagesObjcFAKE = SearchImagesObjcFAKE()
//        sutWorker = SearchImagesWorker(searchImagesObjc: searchImagesObjcFAKE)
    }
    override func tearDownWithError() throws {
        sutWorker = nil
//        searchImagesObjcFAKE = nil
        try super.tearDownWithError()
    }

    // TODO: Revoir le test sur les bonnes data a renvoyer
//    func test_fetchImage_withQuery_expect__resultDataOK() {
//        // given
//        var resultData = ""
//
//        // when
//        let query = "voiture"
//        let expect = expectation(description: "wait for fetchImage(query:completion:) to return")
//
//        sutWorker.fetchImages(query: query) { stringResultData in
//            resultData = stringResultData
//            expect.fulfill()
//        }
//        waitForExpectations(timeout: 1.1)
//        // then
//        XCTAssertEqual(resultData, "ok", "when fetchImage(query: completion  resultData shoulg be equal to `voiture`")
//        // TODO: send back struct ( see de/codable )
//    }
//    func test_fetchImages_request_expect__dataWithPictureAndDescription() {
//        let expected: [UnsplashImage] = [UnsplashImage(url: "", description: "")]
//        let actual: [UnsplashImage] = []
//
//        let request = SearchImages.FetchImages.Request(searchData: "car")
//        sutWorker.fetchImages(request: request) { result in
//
//        }
//
//
//    }

    // TODO: test when api fail

    // MARK: - TEST DOUBLE
//    class SearchImagesObjcFAKE: SearchImagesObjcProtocol {
//        func fetch(query: String, completionObjc: @escaping (String) -> Void) {
//            print("🟧 SearchImagesObjcFAKE")
//            // do someting
//            // send back result from API
//            let result = "ok"
//            completionObjc(result)
//        }
//    }
}

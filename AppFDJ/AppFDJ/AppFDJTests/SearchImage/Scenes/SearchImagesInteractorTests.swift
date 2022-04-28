//
// SearchImagesInteractorTests.swift
// AppFDJTests
// Created in 2022
// Swift 5.0

// Test Business logic of Interactor
import Foundation
import Alamofire

import XCTest
@testable import AppFDJ
// swiftlint:disable line_length
class SearchImagesInteractorTests: XCTestCase {
    var sut: SearchImagesInteractor!
    var searchImagesPresenterSpy: SearchImagesPresenterSpy!
    var searchImagesWorkerSpy: SearchImagesWorkerSpy!

    static let request = SearchImages.FetchImages.Request(dataSearchImage: "")

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = SearchImagesInteractor()
        searchImagesWorkerSpy = SearchImagesWorkerSpy()
        searchImagesPresenterSpy = SearchImagesPresenterSpy()
    }
    override func tearDownWithError() throws {
        sut = nil
        searchImagesPresenterSpy = nil
        searchImagesWorkerSpy = nil

        try super.tearDownWithError()
    }

    // MARK: - Tests

    func test_fetchImage_success_expect__presenterCalled() {
        sut.worker = searchImagesWorkerSpy
        sut.presenter = searchImagesPresenterSpy

        sut.fetchImages(request: SearchImagesInteractorTests.request)

        XCTAssertTrue(searchImagesPresenterSpy.presenterIsPresented)
    }

//    func test_fetchImagesWithRequest_expect__trueWhenPresenterGetResponse () {
//        sut.presenter = searchImagesPresenterSpy
//
//        sut.fetchImages(request: SearchImagesInteractorTests.request)
//
//        XCTAssertTrue(searchImagesPresenterSpy.responseReceived, "should return true when interactor ask to present the response to Presenter")
//    }

    func test_fetchImages_withSuccess_expect__ArrayOfUnsplashImage() {
//        searchImagesWorkerSpy.dataIsFetched = true
//        sut.worker = searchImagesWorkerSpy
//
//        let expect = expectation(description: "wait for result from worker.fetch()")
//        sut.worker?.fetch(query: SearchImagesInteractorTests.request.dataSearchImage, completion: { result in
//            XCTAssertEqual(result, .success([UnsplashImage]()))
//            expect.fulfill()
//        })
//        waitForExpectations(timeout: 1.1)
    }

    func test_fetchImages_withfailure_expect__ArrayOfUnsplashImageEmpty() {
//        searchImagesWorkerSpy.dataIsFetched = false
//        sut.worker = searchImagesWorkerSpy
//
//        let expect = expectation(description: "wait for result from worker.fetch()")
//        sut.worker?.fetch(query: SearchImagesInteractorTests.request.dataSearchImage, completion: { result in
//            XCTAssertEqual(result, .failure(.errorFetch))
//            expect.fulfill()
//        })
//        waitForExpectations(timeout: 1.1)
    }

    // MARK: - Test double
    class SearchImagesWorkerSpy: SearchImagesWorkerProtocol {
        // --- Call Expectation.
        var fetchImageCalled = false

        // Data is Fetched
        var dataIsFetched = false

        func fetch(query: String, completion: @escaping (Result<[UnsplashImage], SearchImagesError>) -> Void) {
            fetchImageCalled = true

            if dataIsFetched {
                completion(.success([]))
            } else {
                completion(.failure(SearchImagesError.errorFetch))
            }
        }

    }
    class SearchImagesPresenterSpy: SearchImagesPresenterProtocol {
        var responseReceived = false
        var searchImageCounter = 0
        var presenterIsPresented = false

        func presentSearchImages(response: SearchImages.FetchImages.Response) {
            responseReceived = true
        }
        func present(_ value: SearchImages.FetchImages.Response) {
            presenterIsPresented = true
            searchImageCounter += 1
            print("🟩 : ", searchImageCounter)
        }
    }
}

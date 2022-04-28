//
// SearchImageViewTests.swift
// AppFDJTests
// Created in 2022
// Swift 5.0

import XCTest
@testable import AppFDJ

class SearchImagesViewTests: XCTestCase {
    var sutView: SearchImagesView!
    var interactorSpy: SearchImagesInteractorSpy!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sutView = SearchImagesView()
        interactorSpy = SearchImagesInteractorSpy()
    }
    override func tearDownWithError() throws {
        sutView = nil
        interactorSpy = nil
        try super.tearDownWithError()
    }

    func test_shouldGetLoaded_OnViewAppear_expect__true() {
        sutView.interactor = interactorSpy
        sutView.fetchImages(request: SearchImages.FetchImages.Request(dataSearchImage: ""))
        XCTAssertTrue(interactorSpy.imageFetched, "fetchImages() ask to Interactor to fetch the images")
    }
    func test_fetchImages_withRequest_expect__requestWithCar() {
        sutView.interactor = interactorSpy
        let request = SearchImages.FetchImages.Request.init(dataSearchImage: "Car")

        sutView.fetchImages(request: request)

        XCTAssertEqual(interactorSpy.request, request, "interactor should receive the same request from View")
    }

    // MARK: - Test double
    // --- Interactor spy.
    class SearchImagesInteractorSpy: SearchImagesProtocolInteractor {

        var imageFetched: Bool = false
        var request = SearchImages.FetchImages.Request(dataSearchImage: "")

        func fetchImages(request: SearchImages.FetchImages.Request) {
            self.imageFetched = true
            self.request = request
        }
    }
}

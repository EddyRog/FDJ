//
// SearchImagesPresenter.swift
// AppFDJTests
// Created in 2022
// Swift 5.0

import Foundation
import Alamofire

import XCTest
@testable import AppFDJ
// swiftlint:disable line_length
class SearchImagesPresenterTests: XCTestCase {
    var sut: SearchImagesPresenter!
    var view: SearchImagesViewSpy!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = SearchImagesPresenter()
        view = SearchImagesViewSpy()
    }
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    // MARK: - Tests
    func test_initPresenter_expect__notnil() {
        XCTAssertNotNil(sut)
    }

    func test_present_data_expect__viewGetCalled() {
        sut.view = view

        let response: [UnsplashImage] = [UnsplashImage]()

        sut.present(SearchImages.FetchImages.Response(data: response))
    }

    class SearchImagesViewSpy: SearchImagesViewProtocol {
        var viewmodel: SearchImages.FetchImages.ViewModel?
        func display(viewModel: SearchImages.FetchImages.ViewModel) { }
    }
}


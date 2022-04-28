//
// SearchImagesPresenter.swift
// AppFDJ
// Created in 2022
// Swift 5.0

import Foundation
protocol SearchImagesPresenterProtocol {
    func presentSearchImages(response: SearchImages.FetchImages.Response)
    func present(_ value: SearchImages.FetchImages.Response)
}

class SearchImagesPresenter {
    var view: SearchImagesViewProtocol?
    var response: SearchImages.FetchImages.Response?
}

extension SearchImagesPresenter: SearchImagesPresenterProtocol {
    func presentSearchImages(response: SearchImages.FetchImages.Response) { }
    func present(_ value: SearchImages.FetchImages.Response) {
        // TODO: Get response
        // TODO: Perform changes
        // stub
        let viewModeldata = SearchImages.FetchImages.ViewModel(
            image: ["toto1", "tata2"],
            description: ["desc 01", "desc2"]
        )
        
        view?.display(viewModel: viewModeldata)
    }
}

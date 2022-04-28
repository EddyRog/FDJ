//
// SearchImagesInteractor.swift
// AppFDJ
// Created in 2022
// Swift 5.0

import Foundation

// --- BUSINESS LOGIC.
protocol SearchImagesProtocolInteractor {
    func fetchImages(request: SearchImages.FetchImages.Request)
}

// --- IMPLEMENTATION.
class SearchImagesInteractor: SearchImagesProtocolInteractor {
    var presenter: SearchImagesPresenterProtocol?
    var worker: SearchImagesWorkerProtocol?
}

// --- EXTENSION.
extension SearchImagesInteractor {
    func fetchImages(request: SearchImages.FetchImages.Request) {
        worker?.fetch(query: "", completion: { _ in
            // TODO: Check Result of fetch
            /*
             check result
              success
               present response
              failure
               throw err
             */

            // Used for debug and test
            // let unsplashImage = Bundle.main.decode(UnsplashImage.self, from: "searchImages.json")

            // Stub
            let valueOFResponse = [
                UnsplashImage(url: "url1", description: "description1"),
                UnsplashImage(url: "url2", description: "description2")
                ]
            let response = SearchImages.FetchImages.Response(data: valueOFResponse)

            self.presenter?.present(response)
        })


        // present the response to the presenter
//        let response = SearchImages.FetchImages.Response(data: [UnsplashImage]() )
//        presenter?.presentSearchImages(response: response)
    }
}

enum ErrorSearch: Equatable, Error {
    case errorFetch
}

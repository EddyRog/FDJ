//
// fetchImageWorker.swift
// AppFDJ
// Created in 2022
// Swift 5.0

import Foundation
import Alamofire

enum SearchImagesError: Error, Equatable {
    case errorFetch
}

// PROTOCOL
protocol SearchImagesWorkerProtocol {

    func fetch(query: String, completion: @escaping (Result<[UnsplashImage], SearchImagesError>) -> Void)
}

// IMPLEMENTATION
class SearchImagesWorker {

    let isFetched = false
}

// EXTENSION
extension SearchImagesWorker: SearchImagesWorkerProtocol {

    func fetch(query: String, completion: @escaping (Result<[UnsplashImage], SearchImagesError>) -> Void) {
        let resultFetched: [UnsplashImage] = []
        // TODO: Alamofire
        // Setup & config Fetching from external Lib

        if isFetched {
            completion(.success(resultFetched))
        } else {
            completion(.failure(SearchImagesError.errorFetch))
        }
    }
}

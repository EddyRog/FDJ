//
// SearchImagesModel.swift
// AppFDJ
// Created in 2022
// Swift 5.0

import Foundation

// swiftlint:disable nesting
enum SearchImages {
    enum FetchImages {
        struct Request: Equatable {
            var dataSearchImage: String
        }
        struct Response {
            var data: [UnsplashImage]
        }
        struct ViewModel {
            // TODO: Confirme data in viewModel
            var image: [String]
            var description: [String]
        }
    }
}

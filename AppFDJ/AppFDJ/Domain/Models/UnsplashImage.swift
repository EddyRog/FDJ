//
// UnsplashImage.swift
// AppFDJ
// Created in 2022
// Swift 5.0

import Foundation

struct UnsplashImage: Equatable {
    // MARK: - infos image
    var url: String = ""
    var description: String = ""
}

// MARK: - UnsplashImage
struct UnsplashImageDecode: Codable {
    var photos: Photos?
}

// MARK: - Photos
struct Photos: Codable {
    var total, totalPages: Int?
    var results: [Results]?

    enum CodingKeys: String, CodingKey {
        case total
        case totalPages = "total_pages"
        case results
    }
}

// MARK: - Result
struct Results: Codable {
    var resultDescription: String?
    var urls: Urls?

    enum CodingKeys: String, CodingKey {
        case resultDescription = "description"
        case urls
    }
}

// MARK: - Urls
struct Urls: Codable {
    var raw, full, regular, small: String?
    var thumb, smallS3: String?

    enum CodingKeys: String, CodingKey {
        case raw, full, regular, small, thumb
        case smallS3 = "small_s3"
    }
}

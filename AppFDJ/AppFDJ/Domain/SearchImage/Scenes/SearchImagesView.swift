//
// SearchImageView.swift
// AppFDJ
// Created in 2022
// Swift 5.0

import SwiftUI

// DisplayLogic
protocol SearchImagesViewProtocol {
    func display(viewModel: SearchImages.FetchImages.ViewModel)
}

struct SearchImagesView: View {
    var interactor: SearchImagesProtocolInteractor?
    var viewModel: SearchImages.FetchImages.ViewModel?
    // TODO: Observable/ SFT

    @State private var valueText = ""
    // TODO: Setup UI
    var body: some View {
        // TODO: Setup Nav
        // TODO: Setup Router
        // TODO: Lazy Loading
        NavigationView {
            VStack {
                TextField("Search images", text: $valueText)
                List {
                    HStack {
                        Image(systemName: "person")
                        Text("images description")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("images description")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("images description")
                    }
                    HStack {
                        Image(systemName: "person")
                        Text("images description")
                    }
                }
            }
            .navigationTitle("FDJ ")
            .onAppear {
                fetchImages(request: SearchImages.FetchImages.Request(dataSearchImage: "car"))
            }
        }
    }
}
struct SearchImagesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchImagesView()
    }
}

extension SearchImagesView: SearchImagesViewProtocol {
    func fetchImages(request: SearchImages.FetchImages.Request) {
        interactor?.fetchImages(request: request)
    }

    func display(viewModel: SearchImages.FetchImages.ViewModel) {
        // TODO: Implement connection fields / data viewModel
    }
}

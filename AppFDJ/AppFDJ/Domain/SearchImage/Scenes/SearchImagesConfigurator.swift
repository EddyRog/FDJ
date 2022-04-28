//
// SearchImagesConfigurator.swift
// AppFDJ
// Created in 2022
// Swift 5.0

import SwiftUI

extension SearchImagesView {
    // TODO: Connection
    func configureView() -> some View {
        var view = self
        let interactor = SearchImagesInteractor()
        let presenter = SearchImagesPresenter()
        let worker = SearchImagesWorker()

        view.interactor = interactor
        interactor.worker = worker
        interactor.presenter = presenter
        presenter.view = view

        return view
    }
}

import SwiftUI
import Combine

// Presenter.swift
protocol HelloWorldPresenterProtocol: ObservableObject {
    var message: String { get }
    func viewDidLoad()
}

class HelloWorldPresenter: HelloWorldPresenterProtocol, HelloWorldInteractorOutputProtocol {
    @Published var message: String = "Hello, World!"

    private var interactor: HelloWorldInteractorInputProtocol
    private var router: HelloWorldRouterProtocol

    init(interactor: HelloWorldInteractorInputProtocol, router: HelloWorldRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func viewDidLoad() {
        interactor.fetchMessage()
    }

    func didFetchMessage(_ message: HelloWorldEntity) {
        self.message = message.message
    }
}

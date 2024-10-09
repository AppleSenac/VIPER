// Interactor.swift
protocol HelloWorldInteractorInputProtocol {
    func fetchMessage()
}

protocol HelloWorldInteractorOutputProtocol: AnyObject {
    func didFetchMessage(_ message: HelloWorldEntity)
}

class HelloWorldInteractor: HelloWorldInteractorInputProtocol {
    weak var presenter: HelloWorldInteractorOutputProtocol?

    func fetchMessage() {
        let messageEntity = HelloWorldEntity(message: "Hello World")
        presenter?.didFetchMessage(messageEntity)
    }
}

import SwiftUI

protocol HelloWorldRouterProtocol {
    static func createModule() -> AnyView
}

class HelloWorldRouter: HelloWorldRouterProtocol {
    static func createModule() -> AnyView {
        let interactor = HelloWorldInteractor()
        let router = HelloWorldRouter()
        let presenter = HelloWorldPresenter(interactor: interactor, router: router)
        interactor.presenter = presenter
        
        return AnyView(HelloWorldView(presenter: presenter))
    }
}

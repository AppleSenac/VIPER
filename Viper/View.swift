// HelloWorldView.swift
import SwiftUI
import Combine

struct HelloWorldView: View {
    @ObservedObject var presenter: HelloWorldPresenter

    var body: some View {
        Text(presenter.message)
            .onAppear {
                presenter.viewDidLoad()
            }
    }
}

struct HelloWorldView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = HelloWorldInteractor() // Assuming you have the Interactor class set up
        let router = HelloWorldRouter()
        let presenter = HelloWorldPresenter(interactor: interactor, router: router)

        HelloWorldView(presenter: presenter)
    }
}

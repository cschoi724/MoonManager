//
//  RootInteractor.swift
//  MoonManager
//
//  Created by cschoi on 2023/08/18.
//

import Foundation
import Combine
import RIBs_SwiftUI

protocol RootRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
    var view: LazyView<RootView> { get }
}

protocol RootPresentable: Presentable {
    var listener: RootPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol RootListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class RootInteractor: PresentableInteractor<RootPresentable> {
    weak var router: RootRouting?
    weak var listener: RootListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: RootPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}

// MARK: - RootInteractable

extension RootInteractor: RootInteractable {}

// MARK: - RootPresentableListener

extension RootInteractor: RootPresentableListener {}

// MARK: - Private functions

private extension RootInteractor {}

//
//  MainRouter.swift
//  MoonManager
//
//  Created by cschoi on 2023/08/18.
//

import RIBs_SwiftUI

protocol MainInteractable: Interactable {
    var router: MainRouting? { get set }
    var listener: MainListener? { get set }
}

protocol MainViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy. Since
    // this RIB does not own its own view, this protocol is conformed to by one of this
    // RIB's ancestor RIBs' view.
}

final class MainRouter: Router<MainInteractable>, MainRouting {
    // TODO: Constructor inject child builder protocols to allow building children.
    init(interactor: MainInteractable, viewController: MainViewControllable) {
        self.viewController = viewController
        super.init(interactor: interactor)
        interactor.router = self
    }

    // MARK: - Private

    private let viewController: MainViewControllable
}

// MARK: - MainRouting

extension MainRouter: MainRouting {
    func cleanupViews() {
        // TODO: Since this router does not own its view, it needs to cleanup the views
        // it may have added to the view hierarchy, when its interactor is deactivated.
    }
}

private extension MainRouter {}

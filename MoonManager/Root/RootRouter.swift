//
//  RootRouter.swift
//  MoonManager
//
//  Created by cschoi on 2023/08/18.
//

import RIBs_SwiftUI

protocol RootInteractable: Interactable {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class RootRouter<ViewControllable: RootViewControllable>: ViewableRouter<RootInteractable, ViewControllable, RootView> {
    // TODO: Constructor inject child builder protocols to allow building children.
    override init(
        interactor: RootInteractable, 
        viewControllable: ViewControllable,
        view: LazyView<RootView>
    ) {
        super.init(interactor: interactor, viewControllable: viewControllable, view: view)
        interactor.router = self
    }
}

// MARK: - RootRouting

extension RootRouter: RootRouting {}

// MARK: - Private functions

private extension RootRouter {}

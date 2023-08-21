//
//  RootBuilder.swift
//  MoonManager
//
//  Created by cschoi on 2023/08/18.
//

import RIBs_SwiftUI

protocol RootDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class RootComponent: Component<RootDependency> {
    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol RootBuildable: Buildable {
    func build(withListener listener: RootListener) -> RootRouting
}

final class RootBuilder: Builder<RootDependency> {
    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }
}

extension  RootBuilder: RootBuildable {
    func build(withListener listener: RootListener) -> RootRouting {
        let component = RootComponent(dependency: dependency)
        let viewModel = RootViewModel()
        let interactor = RootInteractor(presenter: viewModel)
        let view = LazyView(RootView(viewModel: viewModel))
        
        interactor.listener = listener

        return RootRouter(
            interactor: interactor, 
            viewControllable: viewModel, 
            view: view
        )
    }
}

// MARK: - Private functions

private extension RootBuilder {}

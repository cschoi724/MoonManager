//
//  MainBuilder.swift
//  MoonManager
//
//  Created by cschoi on 2023/08/18.
//

import RIBs_SwiftUI

protocol MainDependency: Dependency {
    // TODO: Make sure to convert the variable into lower-camelcase.
    var MainViewController: MainViewControllable { get }
    // TODO: Declare the set of dependencies required by this RIB, but won't be
    // created by this RIB.
}

final class MainComponent: Component<MainDependency> {
    // TODO: Make sure to convert the variable into lower-camelcase.
    fileprivate var MainViewController: MainViewControllable {
        return dependency.MainViewController
    }

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol MainBuildable: Buildable {
    func build(withListener listener: MainListener) -> MainRouting
}

final class MainBuilder: Builder<MainDependency> {
    override init(dependency: MainDependency) {
        super.init(dependency: dependency)
    }
}

extension MainBuilder: MainBuildable {
    func build(withListener listener: MainListener) -> MainRouting {
        let component = MainComponent(dependency: dependency)
        let interactor = MainInteractor()
        interactor.listener = listener
        return MainRouter(interactor: interactor, viewController: component.MainViewController)
    }
}

// MARK: - Private functions

private extension MainBuilder {}

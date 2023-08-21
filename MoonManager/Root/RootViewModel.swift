//
//  RootViewModel.swift
//  MoonManager
//
//  Created by cschoi on 2023/08/18.
//

import Combine
import Foundation
import SwiftUI

protocol RootPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class RootViewModel: RootViewControllable {
    weak var listener: RootPresentableListener?
}

extension RootViewModel: RootPresentable {}

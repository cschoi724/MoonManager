//
//  RootView.swift
//  MoonManager
//
//  Created by cschoi on 2023/08/18.
//

import SwiftUI
import Navigator

public struct RootView: View {
    @ObservedObject var viewModel: RootViewModel
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        Text("Hello, I am Root view")
    }

    @Environment(\.navigator) private var navigator
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(viewModel: RootViewModel())
    }
}

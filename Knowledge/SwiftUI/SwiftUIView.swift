//
//  SwiftUIView.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 5/7/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import SwiftUI
import Combine

public struct SwiftUIView: View {
    @ObservedObject var viewModel: SwiftUIViewModel = SwiftUIViewModel()
    
    public var body: some View {
        VStack {
            Text("SwiftUIView")
                .font(.largeTitle)
            Button(action: {
                self.viewModel.presentUIKitView()
            }) {
                Text("Go to UIKitView")
            }
        }
        .onDisappear {
            print("Leave")
        }
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}



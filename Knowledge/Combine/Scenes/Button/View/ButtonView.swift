//
//  ButtonView.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 5/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject public var viewModel: ButtonViewModel
    
    var body: some View {
        Button("Button") {
            self.viewModel.selectedButton.send()
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(viewModel: ButtonViewModel())
    }
}

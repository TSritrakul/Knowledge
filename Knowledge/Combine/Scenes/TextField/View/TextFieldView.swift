//
//  TextFieldView.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 5/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @ObservedObject public var viewModel: TextFieldViewModel
    
    var body: some View {
        VStack(content: {
            TextField("Username", text: self.$viewModel.username)
            TextField("Password", text: self.$viewModel.password)
            Button("Login") {
                self.viewModel.selectedLoginButton.send()
            }.disabled(!self.viewModel.isValid)
            List {
                ForEach(self.viewModel.baseShelf, id: \.self) { shelf in
                    Text(shelf.titleEn ?? "")
                }
            }
        })
        .padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(viewModel: TextFieldViewModel())
    }
}

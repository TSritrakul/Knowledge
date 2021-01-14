//
//  HomeView.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject public var viewModel: HomeViewModel
    
    var body: some View {
        List {
            ForEach(self.viewModel.baseShelf, id: \.self) { shelf in
                Text(shelf.titleEn ?? "")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}

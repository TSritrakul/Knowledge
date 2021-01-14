//
//  ButtonViewModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 5/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Combine

class ButtonViewModel: ObservableObject {
    
    private var subscriptions = Set<AnyCancellable>()
    let selectedButton: PassthroughSubject<(), Never>
    
    init(selectedButton: PassthroughSubject<(), Never> = PassthroughSubject<(), Never>()) {
        self.selectedButton = selectedButton
        
        self.subscribeButton()
    }
    
    private func subscribeButton() {
        self.selectedButton.sink { (_) in
            print("Touch Button")
        }.store(in: &self.subscriptions)
    }
}


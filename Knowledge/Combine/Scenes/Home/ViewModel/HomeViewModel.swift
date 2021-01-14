//
//  HomeViewModel.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import Combine
import SwiftUI
import Moya

class HomeViewModel: ObservableObject {
    @Published var baseShelf: BaseShelfModel = BaseShelfModel()
    
    private let getBaseShelfUseCase: GetBaseShelfUseCase
    private var subscriptions = Set<AnyCancellable>()
    let selectedButton: PassthroughSubject = PassthroughSubject<Void, Never>()
    
    init(getBaseShelfUseCase: GetBaseShelfUseCase = GetBaseShelfUseCaseImpl()) {
        self.getBaseShelfUseCase = getBaseShelfUseCase
        
        self.getBaseShelf()
        
        self.selectedButton.sink { (_) in
            print("Touch Button")
        }.store(in: &self.subscriptions)
    }
    
    private func getBaseShelf() {
        self.getBaseShelfUseCase
            .execute()
            .mapError { (error) -> Error in
                if let error = error as? MoyaError {
                    // For handling error.
                    switch error {
                    default:
                        print(error)
                    }
                }
                return error
            }
            .replaceError(with: BaseShelfModel())
            .assign(to: \.baseShelf, on: self)
            .store(in: &self.subscriptions)
    }
}

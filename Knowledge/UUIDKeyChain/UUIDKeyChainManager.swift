//
//  UUIDKeyChainManager.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 28/4/2563 BE.
//  Copyright © 2563 Thatchaphon Sritrakul. All rights reserved.
//

import Foundation
import KeychainAccess

final class UUIDKeyChainManager {
    
    static let shared: UUIDKeyChainManager = UUIDKeyChainManager()
    
    private var uuId: String
    private var keyChain: Keychain = Keychain()
    
    private init(uuId: String = "") {
        self.uuId = uuId
    }
    
    public func getUUID() -> String {
        return self.uuId
    }
    
    public func generateUUID(withService service: String, forKey key: String) {
        keyChain = Keychain(service: service)
        if let uuId = try? keyChain.get(key) {
            self.uuId = uuId
        } else {
            guard let uuIdLocal = UIDevice.current.identifierForVendor?.uuidString else {
                return
            }
            do {
                try keyChain.set(uuIdLocal, key: key)
                self.uuId = uuIdLocal
            }
            catch let error {
                debugPrint(error)
                self.uuId = ""
            }
        }
    }
    
    public func removeUUID(forKey key: String) {
        do {
            try keyChain.remove(key)
        } catch let error {
            print("error: \(error)")
        }
    }
}

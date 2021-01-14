//
//  Combine+Extension.swift
//  Knowledge
//
//  Created by Thatchaphon Sritrakul on 4/1/2564 BE.
//  Copyright © 2564 BE Thatchaphon Sritrakul. All rights reserved.
//

public struct Combine<Base> {
    
    let base: Base
    
    init(_ base: Base) {
        self.base = base
    }
}

public protocol CombineCompatible {
    
    associatedtype CompatibleType
    
    static var cb: Combine<CompatibleType>.Type { get set }
    
    var cb: Combine<CompatibleType> { get set }
}

extension CombineCompatible {
    public static var cb: Combine<Self>.Type {
        get {
            return Combine<Self>.self
        }
        set {
            
        }
    }
    
    public var cb: Combine<Self> {
        get {
            return Combine(self)
        }
        set {
            
        }
    }
}

import class Foundation.NSObject

extension NSObject: CombineCompatible { }

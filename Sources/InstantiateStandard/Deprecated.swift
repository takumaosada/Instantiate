//
//  Deprecated.swift
//  Instantiate
//
//  Created by ST90872 on 2017/06/15.
//

import Foundation
import Instantiate

@available(*, deprecated, renamed: "IdentifierType.from")
public func identifier<I: IdentifierType>(of type: NSObjectProtocol.Type) -> I {
    return I.from(type.className)
}

public extension NibType where Self: ViewController {
    @available(*, unavailable, renamed: "nibSource.name")
    public static var nibName: NibName { fatalError() }
    @available(*, unavailable, renamed: "nibSource.bundle")
    public static var nibBundle: Bundle { fatalError() }
}

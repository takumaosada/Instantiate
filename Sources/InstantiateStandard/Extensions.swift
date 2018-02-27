//
//  Extensions.swift
//  Instantiate
//
//  Created by tarunon on 2016/12/05.
//  Copyright © 2016 tarunon. All rights reserved.
//

import Foundation
import Instantiate

extension NSObjectProtocol {
    static var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
    static var bundle: Bundle {
        return Bundle(for: self)
    }
}

extension IdentifierType {
    public static func from(_ type: NSObjectProtocol.Type) -> Self {
        return Self.from(type.className)
    }
}

#if os(macOS)
import AppKit

extension NSStoryboard.Name: IdentifierType {}
public typealias NibName = NSNib.Name
extension NSNib {
    convenience init(nibName: String, bundle: Bundle) {
        self.init(nibNamed: .from(nibName), bundle: bundle)!
    }
}
#endif

public extension StoryboardType {
    public static var storyboard: Storyboard {
        return Storyboard(name: .from(self), bundle: Bundle(for: self))
    }
}

public extension NibType {
    public static var nibSource: (name: NibName, bundle: Bundle) {
        return (name: .from(Self.self), bundle: Bundle(for: Self.self))
    }
    public static var nib: Nib {
        return Nib(nibName: .from(self), bundle: Bundle(for: self))
    }
}

public extension Reusable {
    public static var reusableIdentifier: Instantiate.UserInterfaceItemIdentifier {
        return .from(self)
    }
}

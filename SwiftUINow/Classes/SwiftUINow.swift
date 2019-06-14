//
//  SwiftUINow.swift
//  SwiftUINow
//
//  Created by hhfa on 2019/6/12.
//  Copyright © 2019 hhfa. All rights reserved.
//

import Foundation
import UIKit

public protocol View {
    var contents:[UIView] {get}
}

public extension View {
    var content:UIView {
        return contents.first!
    }
}

struct ContentView:View {
    var contents:[UIView] = []
}

public struct Text: View {
    public var contents:[UIView]
    var label = UILabel.init(frame: .zero)
    public init(_ text:String) {
        self.contents = [label]
        self.text(text)
    }
    
    @discardableResult
    public func color(_ color: UIColor) -> Self {
        label.textColor = color
        return self
    }
    
    @discardableResult
    public func text(_ text: String) -> Self {
        label.text = text
        return self
    }
}

public struct Button: View {
    public var contents: [UIView]
    var button: UIButton = UIButton.init(type:.custom)
    public init(_ text:String) {
        self.contents = [button]
        self.text(text)
    }
    
    @discardableResult
    public func color(_ color: UIColor) -> Self {
        button.tintColor = color
        return self
    }
    
    @discardableResult
    public func text(_ text: String, state:UIControl.State = .normal) -> Self {
        button.setTitle(text, for: state)
        return self
    }
}

public struct VStack:View {
    public var contents: [UIView]
    
    public var stackView:UIStackView
    
    public init(@ViewBuilder builder: () -> View) {
        stackView = UIStackView(arrangedSubviews: builder().contents)
        stackView.axis = .vertical
        stackView.spacing = 10
        contents = [stackView]
    }
}

public struct HStack:View {
    public var contents: [UIView]
    
    public var stackView:UIStackView
    
    public init(@ViewBuilder builder: () -> View) {
        stackView = UIStackView(arrangedSubviews: builder().contents)
        stackView.axis = .horizontal
        stackView.spacing = 10
        contents = [stackView]
    }
}


public struct ForEach<Data, Content> : View where Data : RandomAccessCollection, Content : View {
    public var contents: [UIView]
    public var data: Data

    public init(_ data: Data, content: @escaping (Data.Element) -> Content) {
        self.data = data
        
       contents =  data.map { (e) -> Content  in
            content(e)
        }.map {$0.contents}.flatMap{$0}
        
    }

}

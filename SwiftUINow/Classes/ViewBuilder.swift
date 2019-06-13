//
//  ViewBuilder.swift
//  StackView
//
//  Created by hhfa on 2019/6/12.
//  Copyright © 2019 hhfa. All rights reserved.
//

import Foundation
import UIKit

@_functionBuilder
public struct ViewBuilder {
    public static func buildBlock() -> View {
        return ContentView()
    }
    
    public static func buildBlock<C0>(_ c0: C0) -> View where C0:View  {
        return c0
    }
    
    public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> View where C0:View,C1:View  {
        var contentView = ContentView()
        let list:[View] = [c0, c1]
        contentView.contents = list.map {$0.contents}.flatMap{$0}
        
        return contentView
    }
    
    public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> View where C0:View,C1:View,C2:View  {
        var contentView = ContentView()
        let list:[View] = [c0, c1, c2]
        contentView.contents = list.map {$0.contents}.flatMap{$0}
        
        return contentView
    }
    
    public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> View where C0:View,C1:View,C2:View,C3:View  {
        var contentView = ContentView()
        let list:[View] = [c0, c1, c2, c3]
        contentView.contents = list.map {$0.contents}.flatMap{$0}
        
        return contentView
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> View where C0:View,C1:View,C2:View, C3:View, C4:View  {
        var contentView = ContentView()
        let list:[View] = [c0, c1, c2, c3, c4]
        contentView.contents = list.map {$0.contents}.flatMap{$0}
        
        return contentView
    }
}


//
//  state.swift
//  notes
//
//  Created by Aritra Sen on 30/11/20.
//

import Foundation
import SwiftUI
import Combine

final class GlobalStore: ObservableObject  {
    @Published var opt = false
    @Published var count = 4
}

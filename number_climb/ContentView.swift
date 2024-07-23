//
//  ContentView.swift
//  number_climb
//
//  Created by Kristiyan Dilov on 21/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    @State var switch_flag = true

    var body: some View {
        Text("\(number)")
            .font(.largeTitle)
        Button("Tap me") {
            if number < 0 {
                switch_flag = true
            }
            if number > 50 {
                switch_flag = false
            }

            if switch_flag {
                increase()
            }

            if !switch_flag {
                decrease()
            }
        }
    }

    func increase() {
        let random_int = Int.random(in: 1 ... 10)

        number += random_int
    }

    func decrease() {
        let random_int = Int.random(in: 1 ... 10)

        number -= random_int
    }
}

#Preview {
    ContentView()
}

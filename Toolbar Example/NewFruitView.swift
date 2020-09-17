//
//  AddFruit.swift
//  Toolbar Example
//
//  Created by Stewart Lynch on 2020-09-16.
//

import SwiftUI

struct NewFruitView: View {
    @Binding var fruit:[Fruit]
    @Binding var isPresenting: Bool
    @State private var name: String = ""
    @State private var emoji: String = ""
    var body: some View {
        ZStack {
            Color.white.opacity(0.1)
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill( Color(.systemBackground))
                        .shadow(radius: 10)
                        .frame(width: 300, height: 200)
                        .overlay(
                            VStack(alignment: .leading) {
                                TextField("Add Fruit name", text: $name)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                TextField("Emoji", text: $emoji)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 75)
                                Text("Add a new Fruit").foregroundColor(.gray)
                                Spacer()
                                HStack {
                                    Button("Cancel") {
                                        withAnimation {
                                            isPresenting = false
                                        }
                                    }
                                    Spacer()
                                    Button("Add") {
                                        fruit.append(Fruit.init(name: name, emoji: emoji))
                                        withAnimation {
                                            isPresenting = false
                                        }
                                    }.disabled(name.isEmpty || emoji.isEmpty)
                                }
                            }
                            .padding()
                        )
                }
                .padding(.top, 80)
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct AddFruit_Previews: PreviewProvider {
    static var previews: some View {
        NewFruitView(fruit: .constant(Fruit.fruit), isPresenting: .constant(true))
    }
}

//
//  ContentView.swift
//  Toolbar Example
//
//  Created by Stewart Lynch on 2020-09-16.
//

import SwiftUI


struct ContentView: View {
    @State private var fruitArray = Fruit.fruit
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitArray) { fruit in
                    HStack {
                        Text(fruit.emoji)
                        Text(fruit.name)
                    }.font(.title)
                }
            }
            .navigationBarTitle("Fruit")
            .navigationBarItems(
                leading: Button(action: {}) {
                    Image(systemName: "questionmark.circle.fill")
                        .font(.title)
                        .frame(width: 40, height: 40)
                },
                trailing: Button(action: {}) {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .frame(width: 40, height: 40)
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




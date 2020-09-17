//
//  ContentView.swift
//  Toolbar Example
//
//  Created by Stewart Lynch on 2020-09-16.
//

import SwiftUI

struct ContentView: View {
    @State private var fruitArray = Fruit.fruit
    @State private var ascending = true
    @State private var isAdding = false

    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(fruitArray.sorted{
                                ascending ?
                                    $0.name < $1.name :
                                    $0.name > $1.name}
                    ) { fruit in
                        HStack {
                            Text(fruit.emoji)
                            Text(fruit.name)
                        }
                        .font(.title)
                    }
                }
                .navigationBarTitle("Fruit")
                .navigationBarItems(
                    leading: Button(action: {
                        ascending.toggle()
                    }) {
                        Image(systemName: "arrow.up.arrow.down.square.fill")
                            .font(.title)
                            .frame(width: 40, height: 40)
                    },
                    trailing: Button(action: {
                        withAnimation {
                            isAdding = true
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .frame(width: 40, height: 40)
                    }
                )
            }
            .blur(radius: isAdding ? 3 : 0)
            if isAdding {
                NewFruitView(fruit: $fruitArray, isPresenting: $isAdding)
                    .zIndex(1.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




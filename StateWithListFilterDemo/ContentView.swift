//
//  ContentView.swift
//  StateWithListFilterDemo
//
//  Created by shree on 31/12/21.
//

import SwiftUI

struct ContentView: View {
    let dishArray = DishModel.getAllDish()
    @State private var isSpicy: Bool = false
    var body: some View {
        List{
            
            Toggle(isOn: $isSpicy) {
                Text("Spicy")
            }
            ForEach(dishArray.filter{$0.isSpicy == self.isSpicy}){ dish in
                HStack{
                    Image(dish.dishImage)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: .fit)
                    Text(dish.dishName)
                        .font(.largeTitle)
                        .lineLimit(nil)
                    if( isSpicy){
                        Image("spicyIcon").resizable()
                            .frame(width: 35, height: 35)
                    }
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

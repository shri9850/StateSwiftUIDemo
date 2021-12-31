//
//  Dish.swift
//  StateWithListFilterDemo
//
//  Created by shree on 31/12/21.
//

import Foundation
import SwiftUI

struct DishModel: Identifiable {
    var id = UUID()
    var dishName: String
    var dishImage: String
    var isSpicy: Bool
}

extension DishModel{
    static func getAllDish()-> [DishModel]{
        return[ DishModel(dishName: "Pasta", dishImage: "Dish1", isSpicy: false),
                DishModel(dishName: "Chicken Ticka", dishImage: "Dish2", isSpicy: true),
                DishModel(dishName: "Pasta chutney", dishImage: "Dish3", isSpicy: true),
                DishModel(dishName: "Mix Veg", dishImage: "Dish4", isSpicy: false),
                DishModel(dishName: "Salad", dishImage: "Dish5", isSpicy: false),
                DishModel(dishName: "Paneer Bhurji", dishImage: "Dish6", isSpicy: true)]
    }
}

//
//  Report.swift
//  cortisol_app
//
//  Created by Shah Samiur Rahman on 2/8/20.
//  Copyright © 2020 Rolling Thunder. All rights reserved.
//

import Foundation

class Report{
    struct Point {
        let date: String
        let cort_level: Double
    }
    private var id: Int // SQL
    private var user_id: Int
    private var max_cort: Double
    private var min_cort: Double
    private var view_type: Int

    init(id: Int, user_id: Int, max_cort: Double, min_cort: Double, view_type: Int){
        self.id = id;
        self.user_id = user_id
        self.max_cort = max_cort
        self.min_cort = min_cort
        self.view_type = view_type
    }
    // Getter Methods
    func getId() -> Int {
        return self.id
    }
    
    func getUserId() -> Int {
        return self.user_id
    }
    
    func getMaxCort() -> Double {
        return self.max_cort
    }
    
    func getMinCort() -> Double {
        return self.min_cort
    }
    
    func getViewType() -> Int {
        return self.view_type
    }
    // Setter Methods
    func setMaxCort(max: Double) {
        self.max_cort = max
        return
    }
    
    func setMinCort(min: Double) {
        self.min_cort = min
        return
    }
    
    // Convert Type Data Method and associated helper methods.
    func convertTypeData(viewType: Int) -> String{
        switch viewType{
        case 1:
            return convertHelperOne()
        case 2:
            return convertHelperTwo()
        case 3:
            return convertHelperThree()
        default:
            return "Error: Unrecognized ViewType"
        }
    }
    func convertHelperOne() -> String{
        let startDate = Date(timeIntervalSinceNow: -86400)
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy HH:mm:ss"
        return formatter.string(from: startDate)
    }
    func convertHelperTwo() -> String{
        let startDate = Date(timeIntervalSinceNow: -604800)
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy HH:mm:ss"
        return formatter.string(from: startDate)
    }
    func convertHelperThree() -> String{
        let startDate = Date(timeIntervalSinceNow: -2419200)
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy HH:mm:ss"
        return formatter.string(from: startDate)
    }
    
    // 
}

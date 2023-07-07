//
//  BottomNavigationViewModel.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 22/06/2023.
//

import Foundation

class BottomNavigationViewModel : ObservableObject{
    @Published  var index : Int
    
    init() {
        self.index = 0
    }
    
    func changeIndex(index:Int){
        self.index=index
    }
}

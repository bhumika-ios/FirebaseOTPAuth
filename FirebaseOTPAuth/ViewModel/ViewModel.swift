//
//  ViewModel.swift
//  FirebaseOTPAuth
//
//  Created by Bhumika Patel on 27/10/23.
//

import SwiftUI

class ViewModel: ObservableObject{
    
    @Published var phNo = ""
    
    func getCountryCode()->String{
        
        let regionCode = Locale.current.region?.identifier ?? ""
        return countries[regionCode] ?? ""
    }
}

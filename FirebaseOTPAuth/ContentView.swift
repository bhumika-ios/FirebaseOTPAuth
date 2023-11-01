//
//  ContentView.swift
//  FirebaseOTPAuth
//
//  Created by Bhumika Patel on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            LoginView()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ContentView()
}

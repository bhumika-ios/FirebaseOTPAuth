//
//  Verifiaction.swift
//  FirebaseOTPAuth
//
//  Created by Bhumika Patel on 01/11/23.
//

import SwiftUI

struct Verifiaction: View {
    @ObservedObject var viewModel : ViewModel
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Button(action:{present.wrappedValue.dismiss()}){
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                    Spacer()
                    
                    Text("Verify Phone")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                    
                    Spacer()
                }
                .padding()
            }
            .frame(height: UIScreen.main.bounds.height / 1.8)
            .background(Color.white)
            .cornerRadius(20)
            
            Spacer()
        }
        .background(Color.gray.ignoresSafeArea(.all, edges: .bottom))
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//#Preview {
//    Verifiaction()
//}

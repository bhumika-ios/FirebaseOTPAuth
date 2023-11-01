//
//  LoginView.swift
//  FirebaseOTPAuth
//
//  Created by Bhumika Patel on 27/10/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack{
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            VStack{
                HStack{
                    VStackLayout(alignment: .leading,spacing: 6){
                        Text("Enter your Number")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        
                        Text("+\(viewModel.getCountryCode()) \(viewModel.phNo)")
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundStyle(.black)
                        
                    }
                    Spacer(minLength: 0)
                    
                }
                NavigationLink(destination: Verifiaction(viewModel: viewModel)){
                    Text("Continue")
                        .foregroundStyle(.black)
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                        .background(.yellow)
                        .cornerRadius(5)
                }
                .disabled(viewModel.phNo == "" ? true : false)
                GeometryReader{reader in
                    VStack{
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 3),spacing: 15) {
                            ForEach(row,id: \.self){ value in
                                Button(action: {
                                    buttonAction(value: value)
                                }){
                                    ZStack{
                                        if value == "delete.left"{
                                            Image(systemName: value)
                                                .font(.title2)
                                                .foregroundStyle(.black)
                                        }else{
                                            Text(value)
                                                .font(.title2)
                                                .fontWeight(.bold)
                                                .foregroundStyle(.black)
                                        }
                                    }
                                   
                                        .frame(width: getWidth(frame: reader.frame(in: .global)), height: getHeight(frame: reader.frame(in: .global)))
                                        .background(Color.white)
                                        .cornerRadius(10)
                                }
                                .disabled(value == "" ? true : false)
                            }
                        }
                    }}
            }
            .padding()
        }
    }
    func getWidth(frame: CGRect)->CGFloat{
        let width = frame.width
        let actualWidth = width - 20
        return actualWidth / 4
    }
    func getHeight(frame: CGRect)->CGFloat{
        let height = frame.height
        let actualHeight = height - 15
        return actualHeight / 10
    }
    func buttonAction(value: String){
        if value == "delete.left" && viewModel.phNo != ""{
            viewModel.phNo.removeLast()
        }
        if value != "delete.left"{
            viewModel.phNo.append(value)
        }
    }
}

#Preview {
    LoginView()
}

//number
var row = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0",  "delete.left" ]

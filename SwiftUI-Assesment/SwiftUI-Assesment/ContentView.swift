//
//  ContentView.swift
//  SwiftUI-Assesment
//
//  Created by Cornelis Kuijpers on 2020/08/20.
//  Copyright © 2020 Cornelis Kuijpers. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{

            
            Color(red: 0.09, green: 0.30, blue: 0.31)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 10.0) {
                HStack{
                    VStack(){
                        Image(systemName: "checkmark.circle.fill")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 45.0)
                        Text("Acknowledge Form")
                            .multilineTextAlignment(.center)
                    }
                    .padding(.top)
                    
                    VStack(){
                        Image(systemName: "checkmark.circle.fill")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 45.0)
                        Text("Training")
                        Text("")
                    }
                    .padding(.top)
                    VStack(){
                        Image("microscope")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 45.0)
                        Text("Medical")
                        Text("")
                    }
                    .padding(.top)
                    VStack(){
                        Image("clipboard")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 45.0)
                        Text("Attest")
                        Text("")
                    }
                    .padding(.top)
                }.background(Color(red: 0.08, green: 0.25, blue: 0.26))
                
                    .frame(width: 380.0, height: 120.0)
                Spacer()
                
            }
            .foregroundColor(Color.black.opacity(0.7))

            ScrollView{
                Spacer()
                Spacer()
                Spacer()
            VStack{
                
                VStack(alignment: .leading){
                    Text("COVIDPass")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical)
                        .foregroundColor(.white)
                    Text("Access Granted")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.all, 6.0)
                        .foregroundColor(.white)
                        .background(Color(red: 0.00, green: 0.58, blue: 0.00))
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color(red: 0.00, green: 0.58, blue: 0.00), lineWidth: 10)
                        )
                    
                    Text("Please use your MIT ID Card to access your assigned buildings through the designated entrance points")
                        .foregroundColor(.white)
                        .padding(.top)
                }.padding()
                
                VStack{
                    VStack{
                        
                        Text("Your current medical test was valid until Aug 15,2020. You will need a new test before this date.")
                            
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Button("Medical Testing Info")
                        {
                            
                        }
                        .padding(.horizontal, 78.0)
                        .foregroundColor(Color.black)
                        .background(Color(red: 1.00, green: 1.00, blue: 1.00))
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.white, lineWidth: 10)
                        )
                    }.background(Color(red: 0.97, green: 0.21, blue: 0.35))
                        .padding()
                        .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke((Color(red: 0.97, green: 0.21, blue: 0.35)), lineWidth: 10)
                    )
                        .background(Color(red: 0.97, green: 0.21, blue: 0.35))
                }
                .padding(.all)
                
                VStack{
                    VStack{
                        Text("You are cleared for access to these building(s) until 7:35PM on Aug 14")
                            .foregroundColor(.white)
                            .padding(.all)
                        //UITableView
                        
                        List {
                            HStack{
                            Image("condo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 40.0)
                                Text("E-14")}
                                .listRowBackground(Color(red: 0.10, green: 0.34, blue: 0.35))
                            HStack{
                            Image("condo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 40.0)
                                Text("W-92")}.listRowBackground(Color(red: 0.10, green: 0.34, blue: 0.35))
                            HStack{
                            Image("condo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 40.0)
                                Text("N-53")}.listRowBackground(Color(red: 0.10, green: 0.34, blue: 0.35))
                        }
                        
                    }
                    .background(Color(red: 0.10, green: 0.34, blue: 0.35))

                }.padding([.leading, .bottom, .trailing])
                    .frame(height: 225.0)
                    .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke((Color(red: 0.10, green: 0.34, blue: 0.35)), lineWidth: 10)).background(Color(red: 0.10, green: 0.34, blue: 0.35))
            }
            }
            .padding(.top)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

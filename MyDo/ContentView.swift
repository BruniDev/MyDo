//
//  ContentView.swift
//  MyDo
//
//  Created by 정현 on 12/28/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        TodayView()
            .overlay(alignment: .bottomTrailing){
                Button(action: {
                   
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .regular))
                        .frame(width: 80, height: 80)
                        .background(Color(.blue))
                        .cornerRadius(100)
                        .padding()
                })
            }
    }
}

#Preview {
    ContentView()
}

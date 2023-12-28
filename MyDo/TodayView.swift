//
//  TodayView.swift
//  MyDo
//
//  Created by 정현 on 12/28/23.
//

import SwiftUI

struct TodayView: View {
    var body: some View {

            VStack
            {
                GeometryReader { geometry in
                VStack(alignment: .leading){
                    
                    Text("오늘")
                        .font(Font.custom("Apple SD Gothic Neo", size: 40).weight(.bold)
                        )
                        .padding(.bottom,25)
                    
                    
    
                    Text(getCurrentDateTime())
                        .font(Font.custom("Apple SD Gothic Neo", size: 20).weight(.bold)
                        )
                    
                    
                    
                }
                .frame(width: geometry.size.width/2,height: geometry.size.height/4)
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .regular))
                        .frame(width: 80, height: 80)
                        .background(Color(.blue))
                        .cornerRadius(100)
                })
                .frame(width: geometry.size.width * 1.5,height: geometry.size.height * 1.75)
                
                .padding()
                
                
            }
        }
        
    }
}
#Preview {
    TodayView()
}

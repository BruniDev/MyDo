//
//  TodayView.swift
//  MyDo
//
//  Created by 정현 on 12/28/23.
//

import SwiftUI

struct TodayView: View {
    @State private var showSheet = false //상태
    @State private var buttonClicked = false
    @State private var calendarClicked = false
    @State private var date = Date()
    @State var agenda : String = ""
    @State var memo : String = ""
    @State var showDatePicker: Bool = false
    @State var savedDate: Date? = nil
    
    var body: some View {
        ZStack{
                GeometryReader { geometry in
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .leading, spacing: 0){
                            Text("오늘")
                                .font(Font.custom("Apple SD Gothic Neo", size: 40).weight(.bold)
                                )
                                .padding(.bottom,25)
                            
                            Text(getCurrentDateTime())
                                .font(Font.custom("Apple SD Gothic Neo", size: 20).weight(.bold)
                                )
                            
                        }
                        .padding(EdgeInsets(top: 30, leading: 30, bottom: 0, trailing: 0))
                        
                        Spacer()
                        
                        }
                    }

                }
                
            }
        }
     
    


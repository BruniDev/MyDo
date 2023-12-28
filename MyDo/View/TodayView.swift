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
    @State var agenda : String = ""
    @State var memo : String = ""
    
    
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
                    
                    if(buttonClicked) {
                        Text("\(agenda)")
                    }
                    
                    
                }
                .frame(width: geometry.size.width/2,height: geometry.size.height/4)
                Spacer()
                
                    Button(action: {
                        self.showSheet.toggle()
                    }, label: {
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .regular))
                        .frame(width: 80, height: 80)
                        .background(Color(.blue))
                        .cornerRadius(100)
                })
                    .sheet(isPresented: $showSheet) {
                        VStack{
                            TextField("작업이름", text: $agenda)
                                .keyboardType(.default)
                                .presentationDetents([.height(geometry.size.height/6)])
                            TextField("메모", text: $memo)
                                .keyboardType(.default)
                                .presentationDetents([.height(geometry.size.height/6)])
                            HStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                                })
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                                })
                                Spacer()
                                Button(action: {
                                    print("버튼이 클릭되었습니다.")
                                    buttonClicked.toggle()
                                }, label: {
                                    Image(systemName: "arrow.up")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25,weight: .regular))
                                        .frame(width: 40, height:40)
                                        .background(Color.blue)
                                        .cornerRadius(20)
                                    
                                })
                            }
                           
                        }
                    }
                    .presentationDragIndicator(.visible)
                .frame(width: geometry.size.width * 1.5,height: geometry.size.height * 1.75)
                
                .padding()
                
                
            }
        }
        
    }
}
#Preview {
    TodayView()
}


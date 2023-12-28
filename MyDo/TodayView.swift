//
//  TodayView.swift
//  MyDo
//
//  Created by 정현 on 12/28/23.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        VStack{
            Text("오늘")
            Text(getCurrentDateTime())
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}
#Preview {
    TodayView()
}

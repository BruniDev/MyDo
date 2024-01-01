//
//  AddAgendaSheet.swift
//  MyDo
//
//  Created by 정현 on 12/29/23.
//

import SwiftUI

struct AddAgendaSheet: View {
    @State private var birthday = Date()
      @State private var isChild = false
      @State private var ageFilter = ""
    @State private var clicked = false
    
    static let dateformat: DateFormatter = {
           let formatter = DateFormatter()
            formatter.dateFormat = "M월 d일"
            return formatter
        }()
    var body: some View {
        VStack(alignment: .center)
           {
            Text("작업")
            Text("작업")
            //        Button(action: {
            //            clicked.toggle()
            //        }
            //               , label: {
            //            Text("\(birthday,formatter: AddAgendaSheet.dateformat)")
            //        })
            //        .overlay{
            DatePicker("날짜: ",selection: $birthday, displayedComponents: [.date])
        }
//
//        }
}
    func checkAge(date: Date) -> Bool  {
            let today = Date()
            let diffs = Calendar.current.dateComponents([.year], from: date, to: today)
            let formatter = DateComponentsFormatter()
            let outputString = formatter.string(from: diffs)
            self.ageFilter = outputString!.filter("0123456789.".contains)
            let ageTest = Int(self.ageFilter) ?? 0
            if ageTest > 18 {
                return false
            }else{
                return true
            }
        }
    }


//#Preview {
//    AddAgendaSheet(date: Date())
//}

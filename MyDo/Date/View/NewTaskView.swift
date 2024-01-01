//
//  NewTaskView.swift
//  MyDo
//
//  Created by 정현 on 12/31/23.
//

import SwiftUI

struct NewTaskView: View {
    
    @State private var todoTitle: String = ""
    @State private var todoMemo : String = ""
    @State private var isEditing: Bool = false
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                TextField("할일을 입력해주세요", text: self.$todoTitle,onEditingChanged: {
                    self.isEditing = $0
                })
                .font(
                Font.custom("Apple SD Gothic Neo", size: 24)
                .weight(.bold)
                )
                TextField("메모를 입력해주세요", text: self.$todoMemo,axis: .vertical)
                .font(
                Font.custom("Apple SD Gothic Neo", size: 15)
                .weight(.bold)
                )
                .padding(.bottom,10)
                HStack{
                    Button {
                        print("오늘이 출력되었습니다")
                    } label: {
                        Text("오늘")
                            .frame(width: 74, height: 20)
                            .background(.gray)
                    }
                    Button {
                        print("반복이 출력되었습니다")
                    } label: {
                        Text("반복")
                            .frame(width: 74, height: 20)
                            .background(.gray)
                    }
                    Spacer()
                    
                    Button {
                        addNewTask(title: self.todoTitle, memo: self.todoMemo)
                    } label: {
                        Image(systemName: "arrow.up")
                            .frame(width: 40,height: 40)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    
                }
            }
            .padding(.leading,20)
            .padding(.trailing,20)
            .background(Color.white)
        }
    }
    private func addNewTask(title: String, memo: String) -> Void {
        let todoItem = ToDoItem(context: viewContext)
        todoItem.id = UUID()
        todoItem.title = title
        todoItem.memo = memo
            
            do {
                try viewContext.save()
                print("저장 완료")
              
            }catch {
                print(error.localizedDescription)
                print("error called")
            }
            
        }
}

#Preview {
    NewTaskView()
}

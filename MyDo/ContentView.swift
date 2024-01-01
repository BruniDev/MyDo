//
//  ContentView.swift
//  MyDo
//
//  Created by 정현 on 12/28/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    //    @Environment(\.managedObjectContext) var
    @Environment(\.managedObjectContext) private var viewContext
  
    @FetchRequest(entity: ToDoItem.entity(),
                  sortDescriptors: [
                    NSSortDescriptor(keyPath: \ToDoItem.id, ascending: false)
                  ], animation: .default)
    
    private var todos: FetchedResults<ToDoItem>

    
    @State private var showNewTask: Bool = false
    @State private var searchText: String = ""
    
    var body: some View {
      
        NavigationView {
            
            VStack{
                TodayView()
                Spacer()
                
                Button(action: {
                    showNewTask = true
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
            .sheet(isPresented: $showNewTask){
                NewTaskView()
                    .transition(.move(edge: .bottom))
                    .animation(.default, value: self.showNewTask)
                    .presentationDetents([.height(150)])
                
            }
        }
            
        
    }
}

//#Preview {
//    ContentView()
//}

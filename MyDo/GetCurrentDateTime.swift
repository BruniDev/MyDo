//
//  GetCurrentDateTime.swift
//  MyDo
//
//  Created by 정현 on 12/28/23.
//

import Foundation

func getCurrentDateTime() -> String{
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    formatter.timeStyle = .medium
    formatter.dateFormat = "MM월 dd일 EEEE"
    formatter.locale = Locale(identifier: "ko_KR")
    let str = formatter.string(from: Date())
    return str
}

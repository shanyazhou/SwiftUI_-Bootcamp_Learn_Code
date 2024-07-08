//
//  DatePickerBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/8.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Calendar.current.date(from: DateComponents(year: 2038)) ?? Date()
    
    //设置输出的日期格式
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack{
            HStack{
                Text("选中的日期是：")
                Text(dateFormatter.string(from: selectedDate))
                    .foregroundStyle(.green)
            }
            
            
            DatePicker("日期选择器1", selection: $selectedDate)
                .datePickerStyle(CompactDatePickerStyle())//默认CompactDatePickerStyle
            
            //displayedComponents可以具体要日、时、分？
            DatePicker("日期选择器2", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                .datePickerStyle(GraphicalDatePickerStyle())//展开样式
            
            //in 可以设置时间的起止日期
            DatePicker("日期选择3", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
            
        }
        .accentColor(Color.red)
        
    }
}

#Preview {
    DatePickerBootcamp()
}

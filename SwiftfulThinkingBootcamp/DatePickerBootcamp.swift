//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 13/09/24.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date])
        
        Text("Selected Date is:".uppercased())
        Text(dateFormatter.string(from: selectedDate))
            .font(.title)
        
        
        DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute])
            .accentColor(.red)
            .datePickerStyle(.compact)
    }
}

#Preview {
    DatePickerBootcamp()
}

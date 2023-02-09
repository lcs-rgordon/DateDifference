//
//  ContentView.swift
//  DateDifference
//
//  Created by Russell Gordon on 2023-02-08.
//

import SwiftUI

struct ContentView: View {

    // MARK: Stored properties
    @State var from: Date = Date()  // Sets to current date and time
    @State var to: Date = Date()    // Sets to current date and time
    
    // MARK: Computed properties
    var differenceInDays: Int {
        
        guard let daysLeft = Calendar.current.dateComponents([.day], from: from, to: to).day else {
            return 0
        }
        
        return daysLeft

    }
    
    // User interface
    var body: some View {
        VStack(spacing: 30) {
            DatePicker(selection: $from, label: {
                Text("From")
            })

            DatePicker(selection: $to, label: {
                Text("To")
            })
            
            Text("\(differenceInDays)")
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

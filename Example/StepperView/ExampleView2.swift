//
//  NumberedCircleView.swift
//  StepperView_Example
//
//  Created by Venkatnarayansetty, Badarinath on 4/8/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//
import SwiftUI
import StepperView

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct ExampleView2:View {
    
    let cells = [ StepTextView(text: "Insert ATM Card"),
                  StepTextView(text: "Enter 4-Digit ATM Pin"),
                  StepTextView(text: "Select the type of Transaction"),
                  StepTextView(text: "Select the Type of Account"),
                  StepTextView(text: "Enter the withdrawal amount"),
                  StepTextView(text: "Collect the Cash"),
                  StepTextView(text:"Take a printed receipt")
                ]
    
    let indicationTypes = [
                StepperIndicationType.custom(NumberedCircleView(text: "1").eraseToAnyView()),
                    .custom(NumberedCircleView(text: "2").eraseToAnyView()),
                    .custom(NumberedCircleView(text: "3").eraseToAnyView()),
                    .custom(NumberedCircleView(text: "4").eraseToAnyView()),
                    .custom(NumberedCircleView(text: "5").eraseToAnyView()),
                    .custom(NumberedCircleView(text: "6").eraseToAnyView()),
                    .custom(NumberedCircleView(text: "7").eraseToAnyView())
            ]
    
    var body: some View {
        HStack {
            StepperView(cells: self.cells,
                indicationType:indicationTypes,
                lineOptions: StepperLineOptions.custom(3,Color(Colors.blue(.teal).rawValue)))
        }
    }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
struct StepTextView: View {
    var text:String
    var body: some View {
        VStack {
            Text(text)
                .foregroundColor(Color(Colors.blue(.teal).rawValue))
                .font(.system(size: 16, weight: Font.Weight.medium))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

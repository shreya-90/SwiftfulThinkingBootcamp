//
//  GridViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Shreya Pallan on 23/09/24.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) { rowIndex in
                GridRow(alignment: .top) {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
                            EmptyView()
                            
//                            Color.clear
//                                .gridCellUnsizedAxes(.horizontal)
//                                .gridCellUnsizedAxes(.vertical)
                            
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridColumnAlignment(cellNumber == 1 ? .trailing : .center)
                                .gridCellAnchor(.bottom)
                        }
                    }
                }
                
            }

//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
////            cell(int: 33333333333)
//            GridRow {
//                cell(int: 4)
//                cell(int: 5)
//            }
            
        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .frame(height: int == 10 ? 20 : nil)
            .padding()
            .background(Color.blue)
            
    }
}

#Preview {
    GridViewBootcamp()
}

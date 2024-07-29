//
//  GridViewBootcamp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/29.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        ScrollView(){
            Grid(){
                
                GridRow {
                    cell(int: 1)
                    cell(int: 2)
                    cell(int: 3)
                }
                
                //神奇
    //            cell(int: 666666666)
                
                //从左到右，顶格
    //            Divider()
               
                //上面Grid多大，线多宽
                Divider()
                    .frame(height: 10)
                    .gridCellUnsizedAxes(.horizontal)
                    .background(.blue)
                
                GridRow {
                    cell(int: 4)
                    cell(int: 5)
                }
                
                
                cell(int: 6)
                cell(int: 7)
                cell(int: 8)
            }
            .background(.gray)
            
            Grid(){
                
                ForEach(0..<4) { rowIndex in
                    GridRow{
                        ForEach(0..<4) { columnIndex in
                            
                            let cellNumber = (columnIndex + 1) + (rowIndex * 4)
                            cell(int: cellNumber)
                        }
                    }
                }
            }
            .background(.purple)
            
            Grid(alignment: .trailing, horizontalSpacing: 5, verticalSpacing: 20, content: {
                ForEach(0..<4) { rowIndex in
                    GridRow{
                        ForEach(0..<4) { columnIndex in
                            
                            let cellNumber = (columnIndex + 1) + (rowIndex * 4)
                            cell(int: cellNumber)
                        }
                    }
                }
            })
            .background(.yellow)
            
            
            
            Grid(alignment: .trailing, horizontalSpacing: 5, verticalSpacing: 20, content: {
                ForEach(0..<4) { rowIndex in
                    GridRow{
                        ForEach(0..<4) { columnIndex in
                            let cellNumber = (columnIndex + 1) + (rowIndex * 4)
                            //第7个是空白
                            if cellNumber == 7 {
                                Color.clear
                                    .gridCellUnsizedAxes([.horizontal, .vertical])
                            }else{
                                cell(int: cellNumber)
                            }
                            
                            
                        }
                    }
                }
            })
            .background(.blue)
            
            
            Grid(alignment: .center, horizontalSpacing: 5, verticalSpacing: 20, content: {
                ForEach(0..<4) { rowIndex in
                    GridRow{
                        ForEach(0..<4) { columnIndex in
                            let cellNumber = (columnIndex + 1) + (rowIndex * 4)
                            //第7个是空白
                            if cellNumber == 7 {
                                EmptyView()
                            }else{
                                cell(int: cellNumber)
                                    //做到7是空的，然后6占两列
                                    .gridCellColumns(cellNumber == 6 ? 2 : 1)//一个单元格占几列，默认是1列
                                    .gridColumnAlignment(cellNumber == 6 ? .center : .trailing)
                            }
                        }
                    }
                }
            })
            .background(Color.brown)
        }
        
        
        
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(.orange)
    }
}

#Preview {
    GridViewBootcamp()
}

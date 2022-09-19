//
//  SFSymbolsView.swift
//

import SwiftUI

public struct SFSymbolsView: View {

    @Binding public var symbol: String
    @Binding public var color: Color
    
    @State public var symbols: Set<SFSymbols>
    @State private var selectedSymbols: SFSymbols
    
    public init(symbol: Binding<String>, color: Binding<Color>, symbols: Set<SFSymbols>) {
        guard !symbols.isEmpty else { fatalError("Symbols can't be empty") }
        self._symbol = symbol
        self._color = color
        self.symbols = symbols
        self.selectedSymbols = symbols.first!
    }
    
    public var body: some View {
        VStack {
            ZStack(alignment: .top) {
                systemImage
                ColorPicker("", selection: $color)
            }
            symbolPicker
            symbolGrid
        }
        .padding()
        .navigationTitle("SF Symbols")
    }
    
    private var systemImage: some View {
        Image(systemName: symbol)
            .foregroundColor(color)
            .font(.system(size: 200))
            .frame(width: 300, height: 300)
    }
    
    private var symbolPicker: some View {
        Picker("", selection: $selectedSymbols) {
            ForEach(Array(symbols), id: \.self) { item in
                Image(systemName: item.logo)
            }
        }
        .pickerStyle(.segmented)
        .padding(.bottom)
    }
    
    private var symbolGrid: some View {
        let gridItemLayout = [GridItem(.adaptive(minimum: 50))]
        
        return ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 10) {
                ForEach(selectedSymbols.icons, id: \.self) { icon in
                    Button(action: {
                        symbol = icon
                    }, label: {
                        Image(systemName: icon)
                            .foregroundColor(color)
                            .font(.system(size: 25))
                            .frame(width: 50, height: 50)
                            .cornerRadius(5)
                    })
                    .cornerRadius(10)
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

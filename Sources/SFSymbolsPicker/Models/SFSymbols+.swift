//
//  SFSymbol.swift
//

import Foundation

extension SFSymbols {
    var name: String {
        switch self {
        case .communication:
            return "Communication"
        case .weather:
            return "Weather"
        case .objectsTools:
            return "Objects & Tools"
        case .devices:
            return "Devices"
        case .gaming:
            return "Gaming"
        case .connectivity:
            return "Connectivity"
        case .transport:
            return "Transport"
        case .human:
            return "Human"
        case .nature:
            return "Nature"
        case .editing:
            return "Editing"
        case .textFormatting:
            return "Text Formatting"
        case .media:
            return "Media"
        case .keyboard:
            return "Keyboard"
        case .commerce:
            return "Commerce"
        case .time:
            return "Time"
        case .health:
            return "Health"
        case .shapes:
            return "Shapes"
        case .arrows:
            return "Arrows"
        case .indices:
            return "Indices"
        case .maths:
            return "Maths"
        }
    }

    var logo: String {
        switch self {
        case .communication:
            return "message"
        case .weather:
            return "cloud.sun"
        case .objectsTools:
            return "folder"
        case .devices:
            return "desktopcomputer"
        case .gaming:
            return "gamecontroller"
        case .connectivity:
            return "antenna.radiowaves.left.and.right"
        case .transport:
            return "car.fill"
        case .human:
            return "person.crop.circle"
        case .nature:
            return  "leaf"
        case .editing:
            return "slider.horizontal.3"
        case .textFormatting:
            return "textformat"
        case .media:
            return "playpause"
        case .keyboard:
            return "command"
        case .commerce:
            return "cart"
        case .time:
            return "clock"
        case .health:
            return "heart"
        case .shapes:
            return "seal"
        case .arrows:
            return "arrow.right"
        case .indices:
            return "a.circle"
        case .maths:
            return "x.squareroot"
        }
    }
    
    var icons: [String] {
        switch self {
        case .communication:
            return commerceSymbols
        case .weather:
            return weatherSymbols
        case .objectsTools:
            return objectsToolsSymbols
        case .devices:
            return devicesSymbols
        case .gaming:
            return gamingSymbols
        case .connectivity:
            return connectivitySymbols
        case .transport:
            return transportSymbols
        case .human:
            return humanSymbols
        case .nature:
            return natureSymbols
        case .editing:
            return editingSymbols
        case .textFormatting:
            return textFormattingSymbols
        case .media:
            return mediaSymbols
        case .keyboard:
            return keyboardSymbols
        case .commerce:
            return commerceSymbols
        case .time:
            return timeSymbols
        case .health:
            return healthSymbols
        case .shapes:
            return shapesSymbols
        case .arrows:
            return arrowsSymbols
        case .indices:
            return indicesSymbols
        case .maths:
            return mathsSymbols
        }
    }
}

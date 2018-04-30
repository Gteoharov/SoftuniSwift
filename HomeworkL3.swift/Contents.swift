//: Playground - noun: a place where people can play

import UIKit

enum CardsAndDeclarations {
    case c7, c8, c9, c10, cA, cJ, cQ, cK
    case belote, tierce, quarter, quint, carre9, carre10, carreJ, carreQ, carreK, carreA
}

enum GameType {
    case allTrump
    case noTrump
}


func points(of game: GameType, and deckOf: CardsAndDeclarations) -> Int {
    switch (game, deckOf) {
    case (_ , .c7), (_ , .c8):
        return 0
    case (.allTrump , .c9):
        return 14
    case (.noTrump , .c9):
        return 0
    case (_ , .c10):
        return 10
    case (_ , .cA):
        return 11
    case (.allTrump , .cJ):
        return 20
    case (.noTrump, .cJ):
        return 2
    case (_, .cQ):
        return 3
    case (_, .cK):
        return 4
    case (.allTrump, .belote):
        return 20
    case (.allTrump, .tierce):
        return 20
    case (.allTrump, .quarter):
        return 50
    case (.allTrump, .quint):
        return 100
    case (.allTrump, .carre9):
        return 150
    case (.allTrump, .carre10):
        return 100
    case (.allTrump, .carreJ):
        return 200
    case (.allTrump, .carreQ):
        return 100
    case (.allTrump, .carreK):
        return 100
    case (.allTrump, .carreA):
        return 100
    default:
        return 0
    }
}

func getPoints(game: GameType, cards: [CardsAndDeclarations]) -> Int {
    var points = 0
    if game == .allTrump {
        for card in cards {
            switch card {
            case .belote:
                points += 20
            case .tierce:
                points += 20
            case .quarter:
                points += 50
            case .quint:
                points += 100
            case .c10:
                points += 10
            case .cA:
                points += 11
            case .c9:
                points += 14
            case .cJ:
                points += 20
            case .cQ:
                points += 3
            case .cK:
                points += 4
            default:
                points += 0
            }
        }
    } else if game == .noTrump {
        for card in cards {
            switch card {
            case .c10:
                points += 20
            case .cA:
                points += 22
            case .cJ:
                points += 4
            case .cQ:
                points += 6
            case .cK:
                points += 8
            default:
                points += 0
            }
        }
    }
    return points
}


func getWinner(game: GameType, team1: [CardsAndDeclarations], team2: [CardsAndDeclarations]) -> Int {
    let firstTeamScore = getPoints(game: game, cards: team1)
    let secoundTeamScore = getPoints(game: game, cards: team2)
    if firstTeamScore == secoundTeamScore {
        return 0
    } else if firstTeamScore > secoundTeamScore {
        return 1
    } else {
        return 2
    }
    
    
//    Using switch statement + extension Int at the buttom 🛠
    
//    switch firstTeamScore.compare(to: secoundTeamScore) {
//    case .equal:
//        return 0
//    case .greater:
//        return 1
//    case .greater:
//        return 2
//    }
}




getPoints(game: .allTrump, cards: [.cA, .c10, .c8, .c7, .cJ, .cQ, .cK, .cJ])
getPoints(game: .noTrump, cards: [.cA, .c10, .c8, .c7, .cJ, .cQ, .cK, .cJ])

getWinner(game: .allTrump, team1: [.cA, .cA, .c10, .c8, .c7, .carre10], team2: [.cA, .cA, .c10, .c8, .c7, .carre10])




extension Int {
    enum ComparisonOutcome {
        case equal
        case greater
        case less
    }
    func compare(to otherInt: Int) -> ComparisonOutcome {
        if self < otherInt {
            return .less
        }
        if self > otherInt {
            return .greater
        }
        return .equal
    }
}

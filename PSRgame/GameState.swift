//
//  GameState.swift
//  PSRgame
//
//  Created by Otis on 2019/4/13.
//  Copyright © 2019年 Otis. All rights reserved.
//

import Foundation

public enum GameState {
    case win, lose, draw
}

public func play(player:Sign, robot:Sign) -> GameState{
    
    if player == .rock {
        
        if robot == .paper{
            return .lose
        }
        else if robot == .scissors{
            return .win
        }
        else{
            return .draw
        }
    }
    else if player == .paper {
        
        if robot == .scissors{
            return .lose
        }
        else if robot == .rock{
            return .win
        }
        else{
            return .draw
        }
    }
    else{
        
        if robot == .rock{
            return .lose
        }
        else if robot == .paper{
            return .win
        }
        else{
            return .draw
        }
    }
    
}

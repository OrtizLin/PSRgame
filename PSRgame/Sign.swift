//
//  Sign.swift
//  PSRgame
//
//  Created by Otis on 2019/4/13.
//  Copyright © 2019年 Otis. All rights reserved.
//

import Foundation
import GameplayKit

public enum Sign{
    case paper, scissors, rock
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

public func randomSign() -> Sign{
    let sign = randomChoice.nextInt()
    if sign == 0{
        return .paper
    }
    else if sign == 1{
        return .scissors
    }
    else{
        return .rock
    }
}

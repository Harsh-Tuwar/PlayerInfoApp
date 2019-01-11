//
//  PlayerDetail.swift
//  PlayerInfoApp
//
//  Created by Harsh Tuwar on 2019-01-04.
//  Copyright © 2019 HarshTuwar. All rights reserved.
//

import UIKit

class PlayerDetail: UIViewController {
    
//        var model = Model()
    
    var selectedPlayer: [String: AnyObject]?
    
    @IBOutlet weak var plrName: UILabel!
    
    @IBOutlet weak var plrImage: UIImageView!
    
    @IBOutlet weak var teamImg: UIImageView!
    
    @IBOutlet weak var plrTeamName: UILabel!
    
    @IBOutlet weak var plrRatings: UILabel!
    
    @IBOutlet weak var plrRank: UILabel!
    
    @IBOutlet weak var plrSacks: UILabel!
    
    @IBOutlet weak var plrAttempt: UILabel!
    
    @IBOutlet weak var plrCompletion: UILabel!
    
    @IBOutlet weak var plrAtmpPrGm: UILabel!
    
    @IBOutlet weak var plrYrdsPrGm: UILabel!
    
    @IBOutlet weak var plrTchDwn: UILabel!
    
    @IBOutlet weak var plrIntrcpt: UILabel!
    
    @IBOutlet weak var plrPrcntg: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        if let selectedPlayer = selectedPlayer {
            
            //player name
            let playerName = selectedPlayer["Player"] as! String
            plrName.text = playerName

            //player image
            plrImage.image = UIImage(named: playerName)
            
            //team image
            let teamName = selectedPlayer["Team"] as! String
            teamImg.image = UIImage(named: teamName)
            
            //team name
            plrTeamName.text = teamName
            
            //rating
            let rating: Double = selectedPlayer["Rating"] as! Double
            plrRatings.text = String(rating)
            
            //rank
            let rank: Int = selectedPlayer["Rank"] as! Int
            plrRank.text = String(rank)
            
            //sacks
            let sacks: Int = selectedPlayer["Sacks"] as! Int
            plrSacks.text = String(sacks)
            
            //attempts
            let atmpt: Int = selectedPlayer["Attempts"] as! Int
            plrAttempt.text = String(atmpt)
            
            //player completion
            let plrcomp: Int = selectedPlayer["Completions"] as! Int
            plrCompletion.text = String(plrcomp)
            
            //player's attempts per game
            let plrAtmpPrGame: Double = selectedPlayer["AttemptsPerGame"] as! Double
            plrAtmpPrGm.text = String(plrAtmpPrGame)
            
            //player's yards per game
            let plrYrdsPrGame: Double = selectedPlayer["YardsPerGame"] as! Double
            plrYrdsPrGm.text = String(plrYrdsPrGame)
            
            //player's touchdowns
            let plrTouchdowns: Int = selectedPlayer["Touchdowns"] as! Int
            plrTchDwn.text = String(plrTouchdowns)
            
            //player's interception
            let plrInterception: Int = selectedPlayer["Interceptions"] as! Int
            plrIntrcpt.text = String(plrInterception)
            
            //player's percentage
            let plrPercentage: Double = selectedPlayer["Percentage"] as! Double
            plrPrcntg.text = String(plrPercentage) + "%"
            
           
            
        }
        // Do any additional setup after loading the view.
    }
    
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

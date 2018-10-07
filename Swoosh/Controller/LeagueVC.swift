//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Artur on 07/10/2018.
//  Copyright © 2018 Artur. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    @IBOutlet weak var nextBtn: BorderButton!
    
    var player : Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCsegue", sender: self)
    }
    
    @IBAction func selectDesiredLeague(sender: UIButton)
    {
        player.desiredLeague = sender.titleLabel?.text
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let skillvc = segue.destination as? SkillVC else { return }
        skillvc.player = player
        
    }
}

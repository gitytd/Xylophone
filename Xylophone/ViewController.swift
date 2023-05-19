

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            sender.alpha = 1.0
            self.playSound(notePressed: sender.currentTitle!)
            //fonksiyona dışarıdan erişebilmek için "self" kullandım
        }
        
        
    }
    
    func playSound(notePressed: String) {
        let url = Bundle.main.url(forResource: notePressed, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}


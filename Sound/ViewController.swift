//
//  ViewController.swift
//  Sound
//
//  Created by Yui Ogawa on 2022/08/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // ドラムのサウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // ドラムがタップされたときに呼ばれる
    @IBAction func tapDrumButton(){
        // ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        // ドラムの音を再生する
        drumSoundPlayer.play()
    }

}


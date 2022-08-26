//
//  ViewController.swift
//  Sound
//
//  Created by Yui Ogawa on 2022/08/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    
    // ドラムのサウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // ドラムがタップされたときに呼ばれる
    @IBAction func touchDownDrumButton(){
        // ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        // ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        // ドラムの音を再生する
        drumSoundPlayer.play()
    }
    //ドラムボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
}


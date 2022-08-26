//
//  ViewController.swift
//  Sound
//
//  Created by Yui Ogawa on 2022/08/26.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // 表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    
    // サウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // ■ドラムに関するコード
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
    
    // ■ピアノに関するコード
    @IBAction func touchDownPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
    @IBAction func touchUpPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    // ■ギターに関するコード
    @IBAction func touchDownGuitarButton(){
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
    }
    @IBAction func touchUpGuitarButton(){
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}


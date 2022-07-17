//
//  HomeViewController.swift
//  NetflixTask
//
//  Created by 강민혜 on 7/7/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet var posterImages: [UIImageView]!
    @IBOutlet var menuButtons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        setButtonUI(btn: menuButtons[0], title: "TV 프로그램")
        setButtonUI(btn: menuButtons[1], title: "영화")
        setButtonUI(btn: menuButtons[2], title: "내가 찜한 콘텐츠")
        backgroundImageView.image = UIImage(named: "movie4")
        for img in posterImages {
            img.image = UIImage(named: "movie\(img.tag)")
            img.layer.borderWidth = 2
            img.layer.borderColor = UIColor.gray.cgColor
        }
    }
    
    func setButtonUI(btn: UIButton, title: String) {
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
    }
    
    // MARK: - 재생버튼 클릭시 액션
    @IBAction func playButtonTapped(_ sender: UIButton) {
        changeBorderColorRandom()
        changeImgRandom(img: self.backgroundImageView, num: 0)
        changeImgRandom(img: self.posterImages[0], num: 1)
        changeImgRandom(img: self.posterImages[1], num: 2)
        changeImgRandom(img: self.posterImages[2], num: 3)
    }
    
    // MARK: - 포스터 3개 테두리 색상 변경
    func changeBorderColorRandom() {
          UIButton.animate(withDuration: 0.8) {
              let r : CGFloat = CGFloat.random(in: 0.2...1)
              let g : CGFloat = CGFloat.random(in: 0.2...1)
              let b : CGFloat = CGFloat.random(in: 0.2...1)
              
              for img in self.posterImages {
                  img.layer.borderColor = UIColor(red: r, green: g, blue: b, alpha: 1).cgColor
              }
          }
      }

    // MARK: - 배경, 포스터 이미지 변경
    func changeImgRandom(img: UIImageView, num: Int) {
        var numbers: [Int] = []
        while numbers.count < 4 {
            let number = Int.random(in: 1...20)
             if !numbers.contains(number) {
                numbers.append(number)
             }
             print(numbers.sorted())
        }
        
        UIView.transition(with: img,
                          duration: 0.8,
                          options: .transitionCrossDissolve,
                          animations: {
            img.image = UIImage(named: "movie\(numbers[num])")
        }, completion: nil )
    }
}

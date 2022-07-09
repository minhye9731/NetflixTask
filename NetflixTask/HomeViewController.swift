//
//  HomeViewController.swift
//  NetflixTask
//
//  Created by 강민혜 on 7/7/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var posterImage1: UIImageView!
    @IBOutlet weak var posterImage2: UIImageView!
    @IBOutlet weak var posterImage3: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        backgroundImageView.image = UIImage(named: "movie1")
        posterImage1.image = UIImage(named: "movie2")
        posterImage2.image = UIImage(named: "movie3")
        posterImage3.image = UIImage(named: "movie4")
        
        posterImage1.layer.borderWidth = 2
        posterImage2.layer.borderWidth = 2
        posterImage3.layer.borderWidth = 2
        
        posterImage1.layer.borderColor = UIColor.gray.cgColor
        posterImage2.layer.borderColor = UIColor.gray.cgColor
        posterImage3.layer.borderColor = UIColor.gray.cgColor
    }
    
    // MARK: - 포스터 3개 테두리 색상 변경
    func changeBorderColorRandom() {
          let r : CGFloat = CGFloat.random(in: 0.2...1)
          let g : CGFloat = CGFloat.random(in: 0.2...1)
          let b : CGFloat = CGFloat.random(in: 0.2...1)
          
          UIButton.animate(withDuration: 0.8) {
              self.posterImage1.layer.borderColor = UIColor(red: r, green: g, blue: b, alpha: 1).cgColor
              self.posterImage2.layer.borderColor = UIColor(red: r, green: g, blue: b, alpha: 1).cgColor
              self.posterImage3.layer.borderColor = UIColor(red: r, green: g, blue: b, alpha: 1).cgColor
          }
      }

    func changeImageRandom() {
        var numbers: [Int] = []
        
        while numbers.count < 4 {
            let number = Int.random(in: 1...20)
             if !numbers.contains(number) {
                numbers.append(number)
             }
             print(numbers.sorted())
        }
                
        // 이미지뷰 이미지 변경
        UIView.transition(with: self.backgroundImageView,
                          duration: 0.8,
                          options: .transitionCrossDissolve,
                          animations: {
             self.backgroundImageView.image = UIImage(named: "movie\(numbers[0])")
        }, completion: nil )
                
        // 버튼 이미지 변경
        UIView.transition(with: self.posterImage1,
                          duration: 0.8,
                          options: .transitionCrossDissolve,
                          animations: {
              self.posterImage1.image = UIImage(named: "movie\(numbers[1])")
        }, completion: nil )
        
        UIView.transition(with: self.posterImage2,
                          duration: 0.8,
                          options: .transitionCrossDissolve,
                          animations: {
              self.posterImage2.image = UIImage(named: "movie\(numbers[2])")
        }, completion: nil )
        
        UIView.transition(with: self.posterImage3,
                          duration: 0.8,
                          options: .transitionCrossDissolve,
                          animations: {
              self.posterImage3.image = UIImage(named: "movie\(numbers[3])")
        }, completion: nil )
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        changeBorderColorRandom()
        changeImageRandom()
    }
}

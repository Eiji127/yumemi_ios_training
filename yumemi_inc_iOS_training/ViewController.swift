//
//  ViewController.swift
//  yumemi_inc_iOS_training
//
//  Created by 白数叡司 on 2021/10/11.
//

import UIKit
import YumemiWeather

final class ViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var minimumTemperatureLabel: UILabel!
    @IBOutlet weak var maximumTemperatureLabel: UILabel!
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var reloadButton: UIButton!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateWeather()
    }
    
    // MARK: - Handlers
    
    @IBAction func reloadWeather(_ sender: Any) {
        updateWeather()
    }
    
    // MARK: - Helpers
    
    private func updateWeather() {
        let weather = YumemiWeather.fetchWeather()
        setWeatherImage(name: "\(weather)")
    }
    
    private func setWeatherImage(name: String) {
        weatherImageView.image = UIImage(named: name)
    }
}


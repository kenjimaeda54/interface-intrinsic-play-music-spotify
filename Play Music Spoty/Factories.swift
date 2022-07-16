//
//  Factories.swift
//  Play Music Spoty
//
//  Created by kenjimaeda on 16/07/22.
//

import Foundation
import UIKit


func makeImage (_ image: String ) -> UIImageView {
	let view = UIImageView()
	view.translatesAutoresizingMaskIntoConstraints = false
	view.contentMode = .scaleAspectFit
	view.image = UIImage(named: image)
	
	//permitir que a imagem estique
	view.setContentHuggingPriority(UILayoutPriority(rawValue: 250), for: .vertical)
	view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 700), for: .vertical)
	
	return view
}


func makeLabel (_ text: String,_ color: UIColor,_ size: CGFloat,_ align: NSTextAlignment) -> UILabel {
	let label = UILabel()
	label.translatesAutoresizingMaskIntoConstraints = false
	label.text = text
	label.textColor = color
	label.textAlignment = align
	label.font = UIFont.systemFont(ofSize: size)
	return label
}

func makePlayButton () -> UIButton {
	let image = UIImage(named: "play")
	
	let button = UIButton()
	button.translatesAutoresizingMaskIntoConstraints = false
	button.setImage(image, for: .normal)
	//determinar o tamanho do botao
	button.frame = CGRect(x: 100, y: 100, width:100, height: 100)
	
	return button
}

func makeProgress () -> UIProgressView {
	let progress = UIProgressView(progressViewStyle: .default)
	progress.translatesAutoresizingMaskIntoConstraints = false
	progress.tintColor = .gray
	return progress 
}

func makeButtonPlay (_ text: String) -> UIButton  {
	let button = UIButton()
	button.translatesAutoresizingMaskIntoConstraints = false
	button.setTitle(text, for: .normal)
	return button
}

func makeButtonPlayOnSpotify (_ text: String) -> UIButton  {
	let button = UIButton()
	var configuration = UIButton.Configuration.filled()
	button.translatesAutoresizingMaskIntoConstraints = false
	button.setTitle(text, for: .normal)
	//para funcionar o cornerRadius precisa ativar clipsToBounds
	button.clipsToBounds = true
	button.layer.cornerRadius = 20
	button.setTitleColor(.white, for: .normal)
	button.titleLabel?.adjustsFontSizeToFitWidth = true
	//configuration
	configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
	configuration.baseBackgroundColor = UIColor.spotifyGreen
	button.configuration = configuration
	return button
	
}


extension UIColor {
		static let spotifyGreen = UIColor(red: 28/255, green: 184/255, blue: 89/255, alpha: 1)
}

//
//  ViewController.swift
//  Play Music Spoty
//
//  Created by kenjimaeda on 16/07/22.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupView()
	}
	
	func setupView() {
		//mesmo nome que esta no arquivo de imagem
		let albumImg = makeImage("rush")
		let titleAlbum = makeLabel("Tom Sawyer", .black, 18,.center)
		let descriptionAlbum = makeLabel("Rush . Moving Pictures (2011 Remaster)", .gray,14,.center)
		let playImg = makePlayButton()
		let progress = makeProgress()
		let previewStartLabel = makeLabel("0:00", .gray, 12, .left)
		let previewEndLabel = makeLabel("0:30", .gray, 12, .right)
		let buttonPlayOnSpotify = makeButtonPlayOnSpotify("PLAY ON SPOTIFY")
		
		view.addSubview(albumImg)
		view.addSubview(titleAlbum)
		view.addSubview(descriptionAlbum)
		view.addSubview(playImg)
		view.addSubview(progress)
		view.addSubview(previewStartLabel)
		view.addSubview(previewEndLabel)
		view.addSubview(buttonPlayOnSpotify)
		
		let spacing: CGFloat = 8
		
		NSLayoutConstraint.activate([
			albumImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			//relacao de 1 para 1
			albumImg.heightAnchor.constraint(equalTo: view.widthAnchor,multiplier: 1),
			//imagens precisam de altura e largura
			albumImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			//tamanho da tela do celular
			albumImg.widthAnchor.constraint(equalToConstant: view.bounds.width),
			
			titleAlbum.topAnchor.constraint(equalTo: albumImg.bottomAnchor,constant: spacing),
			//dessa maneira area do texto sera toda disponivel na view
			//estou alinhando no  .textAlign = center
			titleAlbum.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: spacing),
			titleAlbum.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -spacing),
			
			descriptionAlbum.topAnchor.constraint(equalTo: titleAlbum.bottomAnchor,constant: spacing),
			descriptionAlbum.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: spacing),
			descriptionAlbum.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -spacing),
			
			//===> container play with progress ===//
			playImg.topAnchor.constraint(equalTo: descriptionAlbum.bottomAnchor,constant: spacing),
			playImg.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: spacing),
			//imagens obrigatoriamente precisam de altura e largura
			playImg.heightAnchor.constraint(equalToConstant: 40),
			playImg.widthAnchor.constraint(equalToConstant: 40),
			
			previewStartLabel.centerYAnchor.constraint(equalTo: playImg.centerYAnchor),
			previewStartLabel.leadingAnchor.constraint(equalTo:playImg.trailingAnchor,constant: spacing),
			previewStartLabel.trailingAnchor.constraint(equalTo: progress.leadingAnchor,constant: -spacing),
			
			progress.centerYAnchor.constraint(equalTo: playImg.centerYAnchor),
			progress.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor,constant: spacing),
			progress.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor,constant: -spacing),
			
			previewEndLabel.centerYAnchor.constraint(equalTo: playImg.centerYAnchor),
			previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -spacing),
			//=====================================//
			
			buttonPlayOnSpotify.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -spacing),
			buttonPlayOnSpotify.centerXAnchor.constraint(equalTo: view.centerXAnchor)
			
		])
		
		
	}
	
}


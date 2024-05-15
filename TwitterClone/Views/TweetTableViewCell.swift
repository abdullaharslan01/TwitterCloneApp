//
//  TweetTableViewCell.swift
//  TwitterClone
//
//  Created by abdullah on 15.05.2024.
//

import UIKit

protocol TweetTableViewCellDelegate: AnyObject{
    func tweetTableViewCellDidTapReply()
    func tweetTableViewCellDidTapRetweet()
    func tweetTableViewCellDidTapLike()
    func tweetTableViewCellDidTapShare()
}

class TweetTableViewCell: UITableViewCell {
    
    
    weak var delegate: TweetTableViewCellDelegate?

    static let identifier  = "TweetTableViewCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let avatarImageView: UIImageView  = {
        let imageView                = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode         = .scaleAspectFill
        imageView.layer.cornerRadius  = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds       = true
        imageView.image               = UIImage(systemName: "person")
        return imageView
    }()
    
    private let shareButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        button.tintColor = .systemGray2
        return button
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .systemGray2
        return button
    }()
    
    private let retweetButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "arrow.2.squarepath"), for: .normal)
        button.tintColor = .systemGray2
        return button
    }()
    
    private let replyButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "bubble.left"), for: .normal)
        button.tintColor = .systemGray2
        return button
    }()
   
    
   private let displayNameLabel   = UILabel(text: "Abdullah Arslan", font: .systemFont(ofSize: 16, weight: .bold))
    
   private let usernameLabel = UILabel(text: "@abdullaharslan1473", font: .systemFont(ofSize: 14, weight: .regular))
    
    private let tweetTextContentLabel = UILabel(text: "This im my Mocup tweet. it is going to take multiple lines. I believe some more text is but lets add some more anyway... and cheers" ,font: UIFont.preferredFont(forTextStyle: .callout),numberofLines: 0
    )
    
    
    
    
    private func configure(){
        
        let actionSpacing: CGFloat = 50
        
        contentView.addSubViews(displayNameLabel,usernameLabel,avatarImageView, tweetTextContentLabel,replyButton,retweetButton,likeButton,shareButton)
        
        avatarImageView.anchor(top: contentView.topAnchor,leading: contentView.leadingAnchor, paddingTop: 14.0, paddingLeading: 20, width: 50.0, height: 50.0)
        
        displayNameLabel.anchor(top: contentView.topAnchor,leading: avatarImageView.trailingAnchor, paddingTop: 20, paddingLeading: 10)
        
        usernameLabel.anchor(leading: displayNameLabel.trailingAnchor, paddingLeading: 10, paddingTrailing: 20)
        usernameLabel.centerY(inView: displayNameLabel)
        
      
        tweetTextContentLabel.anchor(top: displayNameLabel.bottomAnchor, leading: displayNameLabel.leadingAnchor, trailing: contentView.trailingAnchor,  paddingTop: 10, paddingTrailing: 15)
        
        
        replyButton.anchor(top: tweetTextContentLabel.bottomAnchor, leading: tweetTextContentLabel.leadingAnchor, bottom: contentView.bottomAnchor,  paddingTop: 10,paddingBottom: 15)
        
        
        retweetButton.anchor(leading: replyButton.trailingAnchor, paddingLeading: actionSpacing)
        retweetButton.centerY(inView: replyButton)
        
        likeButton.anchor(leading: retweetButton.trailingAnchor, paddingLeading: actionSpacing)
        likeButton.centerY(inView: replyButton)
        
        shareButton.anchor(leading: likeButton.trailingAnchor, paddingLeading: actionSpacing)
        shareButton.centerY(inView: replyButton)

        
        replyButton.addTarget(self, action: #selector(didTapReply), for: .touchUpInside)
        retweetButton.addTarget(self, action: #selector(didTapRetweet), for: .touchUpInside)
        likeButton.addTarget(self, action: #selector(didTapLike), for: .touchUpInside)
        shareButton.addTarget(self, action: #selector(didTapShare), for: .touchUpInside)
        
        


        
    }
    
    
   @objc private func didTapReply(){
       delegate?.tweetTableViewCellDidTapReply()
       
    }
    @objc private   func didTapRetweet(){
        delegate?.tweetTableViewCellDidTapRetweet()
    }
    @objc private  func didTapLike(){
        delegate?.tweetTableViewCellDidTapLike()
    }
    @objc private func didTapShare(){
        delegate?.tweetTableViewCellDidTapShare()
    }
    

}

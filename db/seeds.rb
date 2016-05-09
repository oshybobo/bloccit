require 'random_data'

  #Trial 2
  trial_post = Post.find_or_create_by(
      title: "Why am I great?",
      body:  "Because I speak therefore I am"
      )

  Comment.find_or_create_by(
      post: trial_post,
      body: "This is why I am Great"
      )

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"

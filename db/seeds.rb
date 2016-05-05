require 'random_data'

50.times do

    Post.create!(

      title: RandomData.random_sentence,
      body:  RandomData.random_paragraph
    )
 end

 posts = Post.all

 100.times do
    Comment.create!(

      post: posts.sample,
      body: RandomData.random_paragraph

    )
 end

#Trial 1
2.times do
    Post.create!(

        title: RandomData.random_sentence,
        body:  RandomData.random_paragraph
        )
    end

    uniq_post = Post.all

2.times do
    Comment.create!(

        post: uniq_post.sample,
        body: RandomData.random_paragraph

        )
    end

  #Trail 2
  Post.create!(
      title: "Why am I great?",
      body:  "Because I speak therefore I am"
      )

  trial_post = Post.all

  Comment.create!(
      post: trial_post.sample,
      body: "This is why I am Great"
      )

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"

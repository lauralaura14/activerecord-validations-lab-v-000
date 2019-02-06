class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
<<<<<<< HEAD
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validate :title_has_certain_words

  #VALID_WORDS = [/Won't Believe/, /Secret/, /Top [number]/, /Guess/]

  def title_has_certain_words

    #if VALID_WORDS.none?{ |t| t.match title}
    #errors.add(:title, "Invalid")

    if self.title.to_s.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
      return true
    else
=======
  validates :category, inclusion: {in: %w(fiction non-fiction)}
  validate :title_has_certain_words

  VALID_WORDS = [
      /Won't Believe/i,
      /Secret/i,
      /Top [0-9]*/i,
      /Guess/i
    ]

  def title_has_certain_words
    if VALID_WORDS.none?{ |t| t.match title}
>>>>>>> ade4dc92ebc64c73128d51c307f1995f658ef432
      errors.add(:title, "Invalid")
    end
  end
end

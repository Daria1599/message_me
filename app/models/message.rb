class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true,  
                length: { maximum: 200 }
    scope :custom_display,  -> { order(:created_at).last(20) } # показывает последние 20 сообщений на странице (custom_display метод указываем в контроллере)
end

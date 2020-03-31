class Portfolio < ApplicationRecord

    validates_presence_of :title, :body, :main_image, :thumb_image

    # custome scope
    
    def self.anguler
        where(subtitle: "AngulerJS")
    end

    scope :rubyonrails, -> {where(subtitle: "Ruby On Rails")}
end

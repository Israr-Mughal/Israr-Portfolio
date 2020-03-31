class Portfolio < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    # custome scope

    def self.anguler
        where(subtitle: "AngulerJS")
    end

    scope :rubyonrails, -> {where(subtitle: "Ruby On Rails")}

    # set default values
    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(150,150)
        self.thumb_image ||= Placeholder.image_generator(150,150)
    end

end

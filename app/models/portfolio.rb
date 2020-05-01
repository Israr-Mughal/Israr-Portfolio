class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, 
                                    reject_if: lambda {|attr| attr['name'].blank?}

    include Placeholder
    validates_presence_of :title, :body
    
    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    # custome scope
    def self.anguler
        where(subtitle: "AngulerJS")
    end

    def self.by_position
        order(position: :asc)
    end

    scope :rubyonrails, -> {where(subtitle: "Ruby On Rails")}

end

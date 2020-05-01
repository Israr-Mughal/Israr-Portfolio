class Skill < ApplicationRecord
    # include Placeholder
    validates_presence_of :title, :percent_utilized

    # set default values
    # after_initialize :set_defaults

    # def set_defaults
    #     self.badge ||= Placeholder.image_generator(150,150)
    # end

end

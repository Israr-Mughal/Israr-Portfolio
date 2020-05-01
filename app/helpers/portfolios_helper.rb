module PortfoliosHelper

    # extend ActiveSupport::Concern
    def image_generator(height, width)
        "http://via.placeholder.com/#{width}"
    end

    def protfolio_img img, type
        if img
        elsif type == 'thumb'
            image_generator(height: '350', height: '200')
        else
            image_generator(height: '600', height: '400')
        end
    end

    self.main_image ||= Placeholder.image_generator(150,150)
    self.thumb_image ||= Placeholder.image_generator(150,150)


end

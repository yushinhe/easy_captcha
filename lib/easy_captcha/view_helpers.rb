module EasyCaptcha
  # helper class for ActionView
  module ViewHelpers
    # generate an image_tag for captcha image
    def captcha_tag(captcha_image_path = captcha_path(:i => Time.now.to_i), custom_options = {}) 
      options = { :alt => 'captcha', :width => EasyCaptcha.image_width, :height => EasyCaptcha.image_height }
      options.merge! custom_options
      image_tag(captcha_image_path , options)
    end
  end
end

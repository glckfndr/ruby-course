class Site
    HOME_URL = 'https://www.home.com'
    attr_accessor :current_url 
    def initialize()
        @current_url = HOME_URL
    end

    def go_to(path)
        new_url = HOME_URL + "/" + path 
        @current_url = new_url unless new_url == @current_url          
    end

    def to_s
        "*----------*\n home: #{HOME_URL}\n current url: #{@current_url}\n*----------*"       
    end
end

site = Site.new
puts site

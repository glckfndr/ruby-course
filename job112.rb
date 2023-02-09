class Site
    HOME_URL = 'https://www.home.com'
    @@path = []
    attr_reader :current_url 
    def initialize()
        @current_url = HOME_URL
        @@path.append(@current_url)
    end

    def go_to(path)
        new_url = HOME_URL + "/" + path
        if new_url != @current_url
            @current_url = new_url
            @@path.append(@current_url)
        end
    end

    def <(other)
        @@path.index(@current_url) < @@path.index(other.current_url)
    end

    def >(other)
        @@path.index(@current_url) > @@path.index(other.current_url)
    end

    def ==(other)
        @current_url == other.current_url 
    end

    def to_s
        "*----------*\n home: #{HOME_URL}\n current url: #{@current_url}\n history: #{@@path}\n*----------*"       
    end
end

a1 = Site.new
a1.go_to("first")
a2 = Site.new
a2.go_to("second")
a1.go_to("first1")
a1.go_to("first2")
a1.go_to("first2")
puts a1

puts (a1 > a2) 
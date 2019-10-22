class Cli
    
    def call
        # welcome the user to craigscraper
        # show the user a list of land Listings in salt lake city
        # ask the user to choose a Listing to learn more about
        # get user input and show user more info about that Listing
        welcome
        show_listings
        select_listing
        show_listing
    end

    def welconme
        puts "Welcome to CraigScraper!!! Here are the current properties near Salt Lake City: "
    end

    def show_listings
        puts "1. Oct 22 - Build Your Montana Dream Home"
        puts "2. Oct 22 - Stunning 400 Acres for Sale"
    end

    def select_listing
        puts "Which listing do you want to learn more about?"
        input = gets.chomp
        if !input_valid(input)
            select_listing
        else
            show_listing
        end
    end

    def show_listing
        puts "1. Oct 22 - Build Your Montana Dream Home"
        puts "
        3320 Almosta Road near Bunkhouse
        (google map)
        
        land 
        license info: MT #17769 
        Rarely, does a land parcel become available in this sought-after area north of the Town of Darby. Build your Montana dream home here and never tire of the panoramic views that greet you every day.
        
        The well has been dug, the septic drain field has been installed, electricity is nearby and water right shares are offered through the Tin Cup Water District.
        
        It's just a short drive up an easily accessible private road to the secluded setting which boasts some of the most alluring mountain views in the Bitterroot Valley. Residing in this location will sooth your soul and leave you wondrous of the splendor of Montana.
        
        Listing provided by Tracy Walczak, Exit Realty Bitterroot Valley"
    end

    def input_valid(input)
        input > 0 && input < 3
    end



end
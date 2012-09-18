module RatesHelper

def season(type)

# english only
      if type == 1
        @seasons = Season.where("season = 1")
      end
      if type == 2
        @seasons = Season.where("season = 2")
      end
      if type == 3
        @seasons = Season.where("season = 3")
      end
      if type == 4
        @seasons = Season.where("season = 4")
      end
      if type == 9
        @seasons = Season.where("langu = EN")
      end

end

end

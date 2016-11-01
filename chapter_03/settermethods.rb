class TravelAgentSession
    def year=(y)
        @year = y.to_i
        if @year < 100
            @year = @year + 2000
        end
    end
end

month, day, year = date.split('/')
self.year = year
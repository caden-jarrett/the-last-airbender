class MemberService 
    def self.members_from(nation)
        conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')

        response = conn.get("/api/v1/characters?perPage=497")
        # if nation == 'fire_nation'
        #     response = conn.get("/api/v1/characters?affiliation=Fire+Nation")
        # elsif nation == 'water_tribes'
        #     response = conn.get("/api/v1/characters?affiliation=Water+Tribes")
        # elsif nation == 'earth_kindom'
        #     response = conn.get("/api/v1/characters?affiliation=Earth+Kingdom")
        # elsif nation == 'air_nomads'
        #     response = conn.get("/api/v1/characters?affiliation=Air+Nomads")
        # end

        data = JSON.parse(response.body, symbolize_names: true) 
        nation_members = Array.new
        data.each do |member|
            nation_members << member if member[:affiliation][0..2] == nation[0..2]
        end
    end
end
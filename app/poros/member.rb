class Member
    attr_reader :_id, :name, :allies, :enemies, :affiliation, :photoUrl

    def initialize(data)
        @name = data[:name]
        @id = data[:_id]
        @allies = data[:allies]
        @enemies = data[:enemies]
        @affiliation = data[:affiliation]
        @photoURL = data[:photoUrl]
    end
end
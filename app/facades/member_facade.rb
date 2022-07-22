class MemberFacade
    def self.all_members_from(nation)
        MemberService.members_from(nation).map { |data| Member.new(data)}
    end

    def self.count_all_members(nation)
        MemberService.count_all_members
    end
end
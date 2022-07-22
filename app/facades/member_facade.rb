class MemberFacade
    def self.all_members_from(nation)
        MemberService.members_from(nation).map { |data| Member.new(data)}
    end
end
class SearchController < ApplicationController
    def index
        @members = MemberFacade.all_members_from(params[:nation])
        @memberscount = MemberFacade.count_all_members(params[:nation])
    end
end
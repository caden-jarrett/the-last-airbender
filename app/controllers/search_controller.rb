class SearchController < ApplicationController
    def index
        @members = MemberFacade.all_members_from(params[:nation])
    end
end
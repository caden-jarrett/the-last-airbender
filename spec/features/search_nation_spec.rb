require 'rails_helper'

describe 'As a user, when I visit /,' do
    describe "and select 'Fire Nation' from the select field, and click select" do
        before :each do 
            visit '/'
            expect(page).to have_content('The Four Nations')
            expect(page).to have_content('Search For Members by their Nation')
            expect(page).to have_select :nation, options: ['Fire Nation', 'Water Tribes', 'Earth Kingdom', 'Air Nomads']
            select 'Fire Nation', from: :nation
            click_on 'Search For Members'
        end

        it "will redirect me to '/search" do
            expect(current_path).to eq('/search')
        end

        it 'will show me the total number of people who live in the fire nation' do
            expect(page).to have_content('100 Fire Nation Members')
        end

        it 'will show me the details of the first 25 members of the fire nation' do
            within "#Chan (Fire Nation admiral)" do
                expect(page).to have_content('Name:')
                expect(page).to have_link("Chan (Fire Nation admiral)")
                expect(page).to have_content('Allies:')
                expect(page).to have_content('Ozai')
                expect(page).to have_content('Enemies:')
                expect(page).to have_content('Earth Kingdom')
                expect(page).to have_content('Affiliations:')
                expect(page).to have_content('Fire Nation Navy')

            end

            within "#Circus Master" do
                expect(page).to have_content('Name:')
                expect(page).to have_link("Circus master")
                expect(page).to have_content('Allies:')
                expect(page).to have_content('Ty Lee')
                expect(page).to have_content('Enemies:')
                expect(page).to have_content('Appa')
                expect(page).to have_content('Affiliations:')
                expect(page).to have_content('Fire Nation Circus')
                expect(page).to have_content('')
            end
        end
    end
end
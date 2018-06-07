require 'rails_helper'

describe ArtistsController do
    
    describe 'index action' do
        
        let(:artist_1) { Artist.create name: 'something' }
        let(:artist_2) { Artist.create name: 'more' }
        let(:artist_1) { Artist.create name: 'again' }
        let(:artists) { [artist_1, artist_2, artist_3] }
        
        before :each do
            get :index 
        end
        
        it 'shows all artist' do
            expect(assigns[:artists]).to eq(artists)
        end
        
        it 'returns 200 status' do
            expect(response.status).to eq(200)
        end
        
        it ' renders the index template' do
            expect(response).to render_template('artists/index')
        end
        
    end
    

end
require 'rails_helper'


describe 'routes' do
    
    it 'routes the root to welcome' do
       expect(get: '/').to route_to(
           controller: 'welcome',
           action: 'index'
           ) 
    end
    
    it 'routes /hello' do
       expect(get: '/hello').to route_to(
            controller: 'welcome',
            action: 'hello'
            ) 
    end
    
end
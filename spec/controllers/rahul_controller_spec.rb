require "rails_helper"

RSpec.describe RahulsController, :type => :controller do
    before do
        @rahul = Rahul.create!(name: "rahul gupta", age: 23)
    end

     describe "create rahul record" do 
        it "has rahul record created!" do
            post :create, :params => { :rahul => { :name =>"rahul gupta", :age => 20 } }
            expect(response.status).to eq(302)
        end

        it "has all the rahuls" do
            get :index
            expect(response.status).to eq(200)
        end
     end

     describe "get show content" do
        let(:rahul) { Rahul.create(name: "rahul gupta", age: 23) }
            
        it "has particular rahuls result" do
           
            get :show, params: { use_route: 'rahuls/', id: rahul.id }
            expect(response.status).to eq(200)
        end

        it "has edit right to edit rahul record" do
           
            get :edit, params: { use_route: 'rahuls/', id: rahul.id }
            expect(response).to be_successful
        end

        it "has update right to update rahul gupta record using it's id" do
            patch :update, :params => { :id => 1, :rahul => { :name => "rahul gupta", :age => 23 } }
            expect(response).to redirect_to(rahul_path)
        end
     end
end
require "rails_helper"

describe "Testing Users API" do
    it "GET /users should return a 200 status code" do
        get "/users"

        expect(response).to have_http_status(200)
    end

    it "POST /users should return 201" do 
    	post "/users", params: {
    		user: {
    			first_name: "Foo",
	    		last_name: "Bar",
	    		username: "foobar",
	    		email: "foobar@gmail.com"
    		}
    	}

    	expect(response).to have_http_status(201)
    end

    it "POST /users should return 400 for request missing an attribute" do 
        post "/users", params: {
            user: {
                first_name: "Foo",
                last_name: "Bar",
                email: "foobar@gmail.com"
            }
        }

        expect(response).to have_http_status(400)
    end

    it "PUT /users/:id should return 200 and update the attribute" do 
        user = User.create(first_name: "Foo", last_name: "Bar", username: "foobar", email: "foobar@gmail.com") 

        put "/users/#{user.id}", params: {
            user: {
                first_name: "Bob"
            }
        }

        parsed_body = JSON.parse(response.body)
        expect(response).to have_http_status(200)
        expect(parsed_body["first_name"]).to eq("Bob")
    end

    it "GET /users/:id/edit should return 200" do 
        user = User.create(first_name: "Foo", last_name: "Bar", username: "foobar", email: "foobar@gmail.com")
        get "/users/#{user.id}/edit"

        expect(response).to have_http_status(200)
    end

    it "DELETE /users/:id should return 200" do 
        user = User.create(first_name: "Foo", last_name: "Bar", username: "foobar", email: "foobar@gmail.com") 
        delete "/users/#{user.id}"

        expect(response).to have_http_status(200)
        # expect(user.destroyed?).to be true
    end
end

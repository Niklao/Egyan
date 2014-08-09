class DashboardController < ApplicationController
  layout  "bootstrap_native"
  skip_before_filter :verify_authenticity_token
  
  def index
  	@user_name=logsy()
 	  @book=Book.all
 	  @book_q=Book.new
 	
 	  @user=cookies[:user]
          if @user
            @book_u=Book.my_book( "#{User.get_id( @user )}" )
          return @user_id
          else
            redirect_to login_path
          end       
 	        #@book_b=Book.bookf( cookies[:user] )
   end
 	
 	
  def uploader
    @book=Book.new
  end
  
  def step2
    @book=Book.new
  end
  
	def step3
  		@book_j = Book.new(book_params)
  		if @book_j.save
  		    @user=cookies[:user]
          if @user
            @user_id=User.get_id( @user )
            @user_name=User.get_name( @user )
            @book_j.update( author_id: "#{@user_id}" , author_name: "#{@user_name}" )
          return @user_id
          else
            redirect_to login_path
          end       
  	
  			@book_j.update( author_id: "#{@user_id}" )
  			#@book_j.author_name=authorer_name()
  			#@b_i=@book_j.id
  			#@book_j.update( author_name: "Dhruv Shinkre" , author_id: "11" ) 
        #b_n=@book_j.title
        #b_b=@book_j.image	
  			#output= `rm -rf public/temp`
  			#output= `cd public/ && mkdir /temp`
  			#output= `mkdir public/temp/#{b_n}`				
  			#@path= "public/temp/#{b_n}/"
  			#output= `cp multi.js public/temp/#{b_n}/multi.js && cp jquery-1.10.2.min.js public/temp/#{b_n}/jquery.min.js &&cp head.html public/temp/#{b_n}/head.html && cp foot.html public/temp/#{b_n}/foot.html `   
  			#output= `cp public/#{b_b} public/temp/#{b_n}/`			
  			#output= `cd #{@path} && cat head.html #{b_b} > final.html`
  			#output= `cd #{@path} && cat final.html foot.html >> final.html`		
  			#output= `cd public/temp/#{b_n}/ && phantomjs multi.js`
  			#output= `cd #{@path} && rm multi.js jquery.min.js foot.html final.html head.html #{b_n}.html`
  			#output= `zip -r world/#{@b_i}.zip #@path`
  			#output= `rm -rf public/temp`
		  else
        #redirect_to "store"
      end
	end

	def downloader
		@book_l=Book.findid(params[:bookse])
	end
	
	def down_file 
		file_name=params[:file] 
		send_file(
    		"#{Rails.root}/public/#{file_name}.zip",
    		filename: "mentalist.zip",
    		type: "application/zip"
  		)
	end	
	 
	private
	def authorer_id
		@user=cookies[:user]
    	if @user
     		@user_id=User.get_id( @user )
    	return @user_id
    	else
     		redirect_to login_path
   	end					
	end
	
	def authorer_name
		@user=cookies[:user]
    	if @user
     		@user_id=User.get_name( @user )
    	return @user_id
    	else
     		redirect_to login_path
   	end					
	end
	
	def logsy
    @user=cookies[:user]
    if @user
     @user_id=User.get_user( @user )
    return @user_id
    else
     redirect_to login_path
   end
  end
  
  def book_params
    params.require(:book).permit(:title , :edition , :image, :discrip  )
  end
end

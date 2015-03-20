rails new user_mngmnt_app
cd  user_mngmnt_app
rails g model person name:string email:string password:string type:string


cd app/model

touch user.rb
echo "class User < Person
	  has_many :posts
	  end" >> user.rb


touch admin.rb
echo "class Admin < Person
	  has_many :accounts
      end" >> admin.rb

 cd  user_mngmnt_app

rails g model account account_number:integer

rails g model post content:string description:string

bin/rake db:migrate

rails c
user_obj=User.create(name:"user1", email: "user1@gmail.com",password:"****",type:User)
Admin_obj=Admin.create(name:"admin1", email:"admin1@gmail.com",password:"****",type:Admin)
#User=User.create(name:"user2" ,email:"user2@gmail.com", password:"****" ,type:User)
#Admin=Admin.create(name:"admin2" ,email:"admin2@gmail.com" ,password:"****",type:Admin)

admin_obj1=Admin.Account.build(account_number="81432771")
admin_obj1.save
admin_obj2=Admin.Account.build(account_number="3539868")
admin_obj2.save

user_obj1=User.Post.build(content:'bird',description:'flying_blue_bird')
user_obj1.save
user_obj2=User.Post.build(content:'baby' description:'healthy_happy_baby')
user_obj2.save

   

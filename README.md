# SEI-23 Project Two - Lunch Buddy
- Made by **Team Chonky**. All Rights Reserved. - © 2020
### Team Members
  1. [Asey Koh](https://github.com/akjw)
  2. [Fabien Lim Zheng Kai](https://github.com/fabienlimzk)
  3. [Joey Lim](https://github.com/joeyqlim)
  4. [Maaruf](https://github.com/Maaruf199)

## 1. Technologies Used
- Front end: HTML, CSS, JavaScript, Bootstrap, SASS
- Back end: Ruby on Rails, PostgreSQL
- Gems: Devise, Font Awesome, AWS S3, Geocoder, gmaps4rails
- Hosting: Heroku, Amazon Web Service S3
- Etc: Gmail, Google Cloud Platform, Wireframe, dbdiagram.io

## 2. Description
This website is created to help people feel less lonely when lunch time rolls around, and probably will never eat alone again!

## 3. User Stories
- As a user, I want to be able to look for lunch partners in my area by creating and posting an open lunch appointment
- As a user, I want to be able to specify my lunch budget and cuisine preferences when creating and posting a lunch appointment
- As a user, I want to be able to browse open lunch appointments by time, location, cuisine and price range and accept lunch invitations
- As a user, I want to be able to delete and edit my posted lunch appointments
- As a user, I want to be able to view and edit avatar and my posted/accepted lunch appointments on my profile page
- As an admin, I want to be able to add/edit/delete existing tags so that I can maintain/wrangle tags for a better user experience

### [Models/ERD](https://dbdiagram.io/)
<img src="/public/ERD.png" />

### [Wireframes](https://wireframe.cc/pro/edit/364416)
- Home/Landing Page
<img src="https://i.postimg.cc/jjHgq076/Screenshot-2020-08-07-at-5-03-26-PM.png" />

- Sign Up Page
<img src="https://i.postimg.cc/WzBgJtRd/Sign-Up.png" />

- Login Page
<img src="https://i.postimg.cc/d3yTvv7w/Login.png" />

- Profile Page
<img src="https://i.postimg.cc/8zBMj1ZC/Profile.png" />

- New Appointment Page
<img src="https://i.postimg.cc/KzVgd480/New-Appointment.png" />

## 4. Installation Instructions
[Access online here](https://sei23-lunch-buddy.herokuapp.com/)

### Install on your local
- Fork repo:
  ```
  git clone https://github.com/fabienlimzk/lunch-buddy
  cd lunch-buddy
  bundle install
  yarn install --check-files
  rails db:create
  rails db:migrate
  rails db:seed
  ```

- Running on your localhost
  ```
  rails s
  ```

- Open this url in your browser, [http://localhost:3000](http://localhost:3000)

## 5. Unsolved Problems/Things to Improve
- Adding appointment(s) to your calender, e.g. Google Calendar
- Mobile responsive
- Search function

###

## 6. Resources
 - All images from [freepik](https://www.freepik.com/)
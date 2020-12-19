# ART SPACE - Online art Gallery
A website to appreciate art online - INFO 6250 Final Project Report
|Student Name|NUID|
|:-:|:-:|
|Sichen Zhao|001051127|
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/20201120175508.png)
>Morning Sun - Edward Hopper

## Background

2020 is a very special year, everyone is forced to lock up at home because of the epidemic that is sweeping the world. Just like Edward Hopper's paintings, each of his paintings is like describing a person in quarantine, everyone in his painting looks so lonely.

The painting above was created by him in 1952. In **Morning Sun**, the woman - modeled after Hopper's wife, Jo - faces the sun impassively and seemingly lost in thought. Her visible right eye appears sightless, emphasizing her isolation. The bare wall and the elevation of the room above the street also suggest the bleakness and solitude of impersonal urban life.

Just like us in reality, when the epidemic started, I thought that all emotions related to loneliness came from the sudden termination of various normal social activities. But gradually I discovered that the reason for loneliness is actually because the sense of existence of each individual slowly disappears in quarantine. But Hopper's painting gave me a window to release. His painting made me no longer restricted to my small room, and the world in the painting filled me with curiosity.

So, this is why I want to create a online art gallery website.

## Summary of the Functionality Performed

This project uses `Spring` + `SpringMVC` + `Hibernate` to implement an online art gallery. The main function is to provide a plat for people interested in art to browse famous paintings, Users can see derailed information about different works of seven painters in different periods, share their ideas and inspiration. If users like one of the paintings, they can choose to purchase the art deco painting of this art to support our website maintenance and development. The administrator of the website can process user orders, manage user accounts, and maintain information about paintings.

## Technologies used
- Spring
- SpringMVC
- Hibernate
- Ajax
- Interceptor
- Session Management

## User Roles and performed tasks for each role

**Visitor**
  - visitors are allowed to register login and modify information
  - Visitors can browse paintings
    - Search
      - Search by title
      - Search by type
      - Search by time
      - Search by artist
    - Browse all the paintings stored in database in the index page
  - Click to view detailed information of the painting
    - Title
    - date Created
    - Artist
    - Type
    - Description
  - Add their favorite paintings into My Favorite
  - Comment on favorite paintings and share inspiration
  - Purchase function(Purchase decorative paintings corresponding to their favorite artworks)
  - Check order and confirm received

**Administrator**
  - **Administrators have the same functions as ordinary users**
  - Administrators can process the user's order request and control the delivery process
  - Administrators can view and block the visitors' account
  - View and deleting artworks in the database
  - Administrator can instantly update the paintings displayed in the gallery and modify the details

## Screenshots of key screens if available
### Guide Page
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/screenshot-localhost-8080-ArtU-1608344921768.png)
### Index Page
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/screenshot-localhost-8080-ArtU-main-1608344968533.png)
### Login Page
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/screenshot-localhost-8080-ArtU-login-1608345055267.png)
### Register Page
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/screenshot-localhost-8080-ArtU-register-1608345046639.png)
### Search Page
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/screenshot-localhost-8080-ArtU-search-1608345027786.png)
### Painting Detail Page
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/screenshot-localhost-8080-ArtU-product_detail-1608345008431.png)
### Admin Manage Page
![](https://markpersonal.oss-us-east-1.aliyuncs.com/pic/screenshot-localhost-8080-ArtU-control-1608345072886.png)

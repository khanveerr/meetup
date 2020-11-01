You have an upcoming meetup where you need the participants to RSVP so that you can prepare appropriate accommodations and transport facilities. The participants can bring up to two guests along with them.

You also need an admin screen that contains list of all the participants which can be searched based on their names and locality

The task is to build below 3 apis preferably using Java SpringBoot, Aps .Net Core, Go Lang frameworks (Gin, Revel, Beego), PHP frameworks (Laravel, Lumen, Code Ignitor) or any other framework. You could build your own database schema using Mysql or sqlite for the below entities



### Register API

```/participants POST``` 

1. Name
2. Age
3. D.O.B (JS `Date` object)
4. Profession (can be `Employed`/`Student`)
5. Locality
6. Number of Guests (0-2)
7. Address (multiline input upto 50 characters)

It takes this data to register a participant and stores in the database and return success or failure basis the execution.



###  List API

```/participants GET```

This API should return the list of participants registered. You can also look at building pagination to support a long list


###  Update API

```/participants PUT```

This API will help us update the data for a certain participant.


# Additional Notes

1. Feel free to reach out to us via email (`tech-hr@eduvanz.com` *or* `hr@eduvanz.com`) in case of questions.

2. Please submit the solution via Github. If you're not a Github user or if you're using a private repo, [bundle your Git repo](https://git-scm.com/book/en/v2/Git-Tools-Bundling) and include it as an email attachment.

3. Bonus points for unit tests and coverage.

4. Bonus points for good commit messages.

5. Bonus points for a scalable design.

6. Data validation needs to be considered.

# Private Events

In this app, you will be able to create a user account and events. You will be able to see other users' events and confirm your attendance.

## Getting started

Clone the repository with:

```bash
git clone https://github.com/Oitur/private-events.git
```

Then change to the repository directory, with

```bash
 cd private-events/
```
Use the Rails specific Bash command
```bash
bundle install
```
to install missing gems and packages needed -as specified inside the gemfile and yarn.lock. Afterwards, run the database migration with:

```bash
rails db:migrate
```
**Note:** Sometimes, 'rails db:migrate' will show a version error and stop without completing it's task. Run:

```bash
yarn upgrade
```

That command should solve the issue.

If you followed the steps correctly, you should be able to run the Rails server with the command:
```bash
rails server
```

## Navigation 

Navigation links are available in the top left part of every page. But, a summary of links follows:


## Users, Events, and attendance
Users are created in the url.

**"/users/new"**

Your created, upcoming and past events are shown in your user page

### Events
Events are created in the url.

**"/events/new"**

 Attendees are shown in the Event's page

### Attendance 

As a logged in user, you will be able to see an 'I'n attending' link in every event, be it in the index or the individual show page. If you are already attending an event, this link won't show. 

## Dependencies

This project uses 
- Ruby v2.6.3
- Ruby on Rails v6.0.1

For its building. Other dependencies are listed in the Gemfile, located inside the root directory.  

### Authors

- Roberto Erik Nava  | [Github](https://github.com/Oitur/)
- Daniel Chincoya    | [@chincoya7](https://twitter.com/chincoya7)

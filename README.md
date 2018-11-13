# HTTP Header Authentication for Redmine

The plugin for automatic login with user name set in the HTTP header.

**This plugin is under development. Is may include security problem.**

## Specification

- If you do not have a user, do not sign in.
- If the user exists, log in.
- Login processing uses existing processing

## TODO

Add processing to decrypt the encrypted header information.

## Development

Set up the redmine plugin development environment with docker.

First start the database. The reason is that it takes time to initialize db.

```
docker-compose -f misc/docker-compose.yml up -d db
```

Next, start the redmine server.

```
docker-compose -f misc/docker-compose.yml up redmine
```

# Tilastoseura.fi webpage
## Deploying
### Quickstart
```
./deploy.sh
./cleanup.sh
rm cleanup.sh
chown -R <user>:<webserver> ./*
chmod -R 750 ./*
```

### Detailed description
#### Add common content to all pages
Run the `deploy.sh` script in the root of the repository. This will
add the common content (headers, navigation bar, and footer) to all
pages within the repository.

#### Remove the installation files
Run the `cleanup.sh` script which will remove the common content that
was added, the deployment scripts, and the git repository. Remove the
cleanup script by running `rm cleanup.sh`.

#### Set file permissions
Write permissions for the owner, read-only for the group (webserver),
and no permissions for anyone else.

```
chmod -R 750 ./*
```

Change the owner of the files to the correct user and the group to the
webserver
```
chown -R <user>:<webserver> ./*
```

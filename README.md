# Tilastoseura.fi webpage
## Deploying
### Quickstart
```
./deploy.sh
./cleanup.sh
rm cleanup.sh
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

#### Add the content package
Download the content package from *TODO* and extract it to the root directory.

## License
This work is licensed under a [Creative Commons Attribution 4.0
International License](http://creativecommons.org/licenses/by/4.0/).

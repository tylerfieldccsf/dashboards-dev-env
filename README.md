# dashboards-2025

## Development

Adapting Dockerfile setup from [here](https://dev.to/cuongnp/setting-up-a-local-development-environment-for-jekyll-with-docker-d8k)

```sh
sudo docker build -t my-ruby-env .
```


### steps
1. build docker container
1. copy site files from github into app/dashboards-2025/
1. run docker container
1. open container sh and run:
```sh
$ bundle install
$ bundle exec jekyll serve 
```
alternative oneliner:
```sh
cd dashboards-2025 && bundle exec jekyll serve
```

 
## notes

maybe just use [Jekyll Development Container Images](https://hub.docker.com/r/microsoft/devcontainers-jekyll)


developing own theme: 
https://jekyllrb.com/docs/themes/


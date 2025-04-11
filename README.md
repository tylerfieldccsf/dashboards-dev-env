# dashboards-2025

## Development

Adapting Dockerfile setup from [here](https://dev.to/cuongnp/setting-up-a-local-development-environment-for-jekyll-with-docker-d8k)

```sh
sudo docker build -t my-ruby-env .
```




maybe just use [Jekyll Development Container Images](https://hub.docker.com/r/microsoft/devcontainers-jekyll)



open container sh and run:
```sh
$ bundle install
$ bundle exec jekyll serve 
```
oneliner:
```sh
cd dashboards-2025 && bundle exec jekyll serve
```

 
developing own theme: 
https://jekyllrb.com/docs/themes/


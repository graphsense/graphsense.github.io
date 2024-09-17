VOLUMES=--volume="${PWD}/cache/bundle:/usr/local/bundle:Z"  --volume="${PWD}/cache/gem:/usr/gem:Z" --volume="${PWD}:/srv/jekyll:z"


watch :
	-[ ! -e "${PWD}/cache" ] && docker run ${VOLUMES} jekyll/jekyll jekyll build 
	docker run -p 3400:4000 ${VOLUMES} jekyll/jekyll jekyll serve

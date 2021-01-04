VOLUMES=--volume="${PWD}/cache/bundle:/usr/local/bundle"  --volume="${PWD}/cache/gem:/usr/gem" --volume="${PWD}:/srv/jekyll"

watch :
	-[ ! -e "${PWD}/cache" ] && docker run ${VOLUMES} jekyll/jekyll jekyll build 
	docker run -p 4000:4000 ${VOLUMES} jekyll/jekyll jekyll serve
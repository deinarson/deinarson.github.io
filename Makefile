hugo:
	hugo server

clean:
	find . -name .DS_Store -delete


push:
	git push origin master
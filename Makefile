BRANCH=$(shell git rev-parse --abbrev-ref HEAD )

git:
	git push origin ${BRANCH}

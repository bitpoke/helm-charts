.PHONY: index
index:
	cd docs && helm repo index --url https://helm-charts.bitpoke.io/ ./

.PHONY: publish
publish:
	git add docs/*
	git commit -m "Republish charts [CI SKIP]"
	git push

ssh aws-gpu-nb -tt << EOF
	mkdir notebooks
	cd notebooks
	source activate python3
	jupyter lab
EOF

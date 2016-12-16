golatest = go1.7.4.linux-amd64.tar.gz

magic: vimplug
	ln -s -T $(shell pwd)/vimrc ~/.vimrc
	ln -s -T $(shell pwd)/env_go ~/.env_go
	echo "source ~/.env_go" >> ~/.bashrc

vimplug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

golang:
	# Cuz YOLO
	if [ ! -d "/usr/local/go" ]; then \
		if [ ! -f $(golatest) ]; then \
			curl --progress-bar -L https://storage.googleapis.com/golang/$(golatest) | tar xz -C /usr/local/; \
		else \
			sudo tar xzf $(golatest) -C /usr/local/; \
		fi \
	fi

clean:
	rm ~/.vim/autoload/plug.vim
	rm ~/.vimrc
	rm ~/.env_go

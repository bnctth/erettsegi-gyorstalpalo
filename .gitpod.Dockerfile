FROM gitpod/workspace-full

RUN cd $(mktemp -d)
RUN wget https://github.com/rust-lang/mdBook/releases/download/v0.4.18/mdbook-v0.4.18-x86_64-unknown-linux-gnu.tar.gz && tar -xzfmdbook-v0.4.18-x86_64-unknown-linux-gnu.tar.gz && sudo mv ./mdbook /usr/bin/
cd ~
mkdir -p ~/dev

pushd dev

git clone git@github.com:albertlatacz/dotfiles.git
git clone git@github.com:albertlatacz/albertlatacz.git
git clone git@github.com:albertlatacz/albertlatacz.github.io.git

git clone git@github.com:talk2duck/gradle-s3-build-cache.git

git clone git@github.com:http4k/http4k.git
git clone git@github.com:http4k/http4k-connect.git
git clone git@github.com:http4k/http4k-toolbox.git
git clone git@github.com:http4k/http4k-toolbox-cli.git

git clone git@github.com:fork-handles/forkhandles.git

popd

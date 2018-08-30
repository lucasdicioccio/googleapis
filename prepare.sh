
mkdir -p gen-bin

stack install --local-bin-path=gen-bin proto-lens-protoc

protolens="`pwd`/gen-bin/proto-lens-protoc"

make GRPCPLUGIN="${protolens}"

find gens -name "*.hs" | sed -e 's/gen\///' | sed -e 's/\.hs$//' | tr '/' '.'

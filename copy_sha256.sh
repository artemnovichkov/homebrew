if [ $# -eq 0 ]; then
    echo "A tag argument is needed!(ex: ./copy_sha256 artemnovichkov/fastfood 1.2.3)"
    exit 1
fi
tag=$2
echo "Tag: '${tag}'"
filename="${tag}.tar.gz"
curl -LOk "https://github.com/$1/archive/${filename}"
result=$(shasum -a 256 $filename)
sha256=$(echo ${result} | cut -d ' ' -f 1)
echo $sha256 | tr -d '\n' | pbcopy
echo "sha256('${sha256}') was copied to your clipboard🎉"
rm $filename

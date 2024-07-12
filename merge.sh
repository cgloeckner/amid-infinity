workdir=$(mktemp -d)
buildid=$(date +'%y%m%d')
md_file="${workdir}/amid-infinity_v${buildid}.md"

> "$md_file"

echo "# AMID INFINITY (build ${buildid})" >> "$md_file"
echo -e "\n" >> "$md_file"

for file in *.md; do
    if [[ "$file" =~ ^[0-9] ]]; then
        cat "$file" >> "$md_file"
        echo -e "\n" >> "$md_file"
    fi
done

echo $md_file
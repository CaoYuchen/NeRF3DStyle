CONTENT=$1
STYLE=$2

style_dir=data/styles/${STYLE}
content_dir=data/${CONTENT}
output_dir=data/output

for image in $(ls ${content_dir} | grep ".jpg"); do
    style_transfer ${content_dir}/${image} ${style_dir} -o ${output_dir}/${image} --devices cuda:0 -s 1024
done

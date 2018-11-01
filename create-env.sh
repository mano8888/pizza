#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.hurt$i container.."
    sleep 1
    docker run --name www.hurt$i -d -it --rm nageshvkn/gamutkart-img /bin/bash
    echo "www.hurt$i container has been created!"
	echo "=============================="
done

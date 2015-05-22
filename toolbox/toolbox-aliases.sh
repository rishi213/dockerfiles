toolbox() {
	CONTAINER_ID="toolbox-${UID}-$(echo $@ | md5sum - | head -c 16)"

	# Try to enter a running container...
	docker exec -it $CONTAINER_ID bash 2> /dev/null || \

	docker run -it --rm --name $CONTAINER_ID --cap-add NET_ADMIN $@ \
	-v ${HOME}/Downloads:/root/Downloads nightling/toolbox
}

alias toolbox-sysadmin='toolbox --cap-add SYS_ADMIN'

alias toolbox-host='toolbox-sysadmin --net host --ipc host --pid host -v /:/mnt/host'

toolbox-attach() {
	toolbox-sysadmin --net "container:${!#}" --ipc "container:${!#}" \
	--volumes-from "${!#}" "${@:1:$#-1}"
}

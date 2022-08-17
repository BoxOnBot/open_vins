xhost +

export BOB_OV_WS=/home/sharkbonebroth/bob_ws
export BOB_OV_DATASETS=/home/sharkbonebroth/datasets

sudo docker run -it --net=host --gpus all \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --privileged \
    --rm \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --mount type=bind,source=$BOB_OV_WS,target=/bob_ws \
    --mount type=bind,source=$BOB_OV_DATASETS,target=/datasets \
    ov_ros2_20_04 bash

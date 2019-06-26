FROM diuis/docker-emsdk-opencv3-base:18.10-python2

USER appuser
RUN cd /home/appuser/opencv && \
    mkdir build_js && \
    python platforms/js/build_js.py ./build_js --build_wasm --emscripten_dir=/home/appuser/emsdk/emscripten/1.38.31

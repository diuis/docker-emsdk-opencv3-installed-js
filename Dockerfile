FROM diuis/docker-emsdk-opencv3-base:19.04-python2-emsdk1.38.40

USER appuser
ADD build_js_lux.py /home/appuser/opencv/platforms/js/build_js_lux.py
RUN cd /home/appuser/opencv && \
    mkdir build_js && \
    python platforms/js/build_js_lux.py ./build_js --build_wasm --enable_exception --emscripten_dir=/home/appuser/emsdk/fastcomp/emscripten

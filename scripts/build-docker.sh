set -e
set -x

RASA_VERSION=${RASA_VERSION:-3.0.6}
RASA_IMAGE=${RASA_IMAGE:-rasa-aarch64}
RASA_DOCKER_OPTIONS=${RASA_DOCKER_OPTIONS}

# docker build \
#     --target conda \
#     -t "rasa-aarch64:conda-${RASA_VERSION}" \
#     --build-arg RASA_VERSION=${RASA_VERSION} \
#     .

docker build \
    -t "${RASA_IMAGE}:${RASA_VERSION}" \
    --build-arg RASA_VERSION=${RASA_VERSION} ${RASA_DOCKER_OPTIONS} \
    .
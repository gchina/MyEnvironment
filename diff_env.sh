#!/bin/bash

THIS=$(basename "${0}")
REPO_DIR=$(dirname "${0}")

echo "${REPO_DIR}"

pushd "${REPO_DIR}" > /dev/null
find . \( -path ./.git -o -path ./"${THIS}" \) -prune -o -type f -exec echo {} \; -exec diff {} ~/{} \;
popd > /dev/null



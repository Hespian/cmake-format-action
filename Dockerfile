FROM python:3.9-alpine

LABEL maintainer="Srykah"
LABEL name="cmake-format-lint-action"
LABEL version="1.0.0"
LABEL repository="http://github.com/Srykah/cmake-format-lint-action"
LABEL homepage="http://github.com/Srykah/cmake-format-lint-action"

LABEL com.github.actions.name="cmake-format"
LABEL com.github.actions.description="Automatically formats CMake files to the required format."
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="blue"

RUN pip3 install --upgrade pip && pip install cmake-format==0.6.13

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

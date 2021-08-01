FROM alpine:edge

LABEL name="aws-cdk-js-github-action"
LABEL version="1.0.2"
LABEL repository="https://github.com/centraldasmilhas/aws-cdk-js-github-action"
LABEL homepage="https://github.com/centraldasmilhas/aws-cdk-js-github-action"

LABEL "com.github.actions.name"="aws-cdk-js-github-action"
LABEL "com.github.actions.description"="GitHub Action using AWS CDK for JavaScript"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="blue"

LABEL "maintainer"="Daniel Costa <daniel.henrique.sc@gmail.com>"

RUN apk --no-cache add nodejs npm
RUN npm install -g aws-cdk

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]

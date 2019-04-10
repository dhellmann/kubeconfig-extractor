FROM registry.svc.ci.openshift.org/openshift/release:golang-1.11 AS builder
RUN go get -v github.com/mikefarah/yq

FROM registry.svc.ci.openshift.org/openshift/origin-v4.0:base
COPY --from=builder /go/bin/yq /usr/bin/
COPY kubeconfig-extractor /usr/bin/kubeconfig-extractor

ENTRYPOINT ["/usr/bin/kubeconfig-extractor"]

LABEL io.k8s.display-name="kubeconfig extractor" \
      io.k8s.description="extracts cluster info from kubeconfig" \
      maintainer="Antoni Segura Puimedon <antoni@redhat.com>"

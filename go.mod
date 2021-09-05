module github.com/rancher/k3s

go 1.15

replace (
	github.com/Microsoft/hcsshim => github.com/Microsoft/hcsshim v0.8.20
	github.com/benmoss/go-powershell => github.com/rancher/go-powershell v0.0.0-20200701184732-233247d45373
	github.com/containerd/aufs => github.com/containerd/aufs v1.0.0
	github.com/containerd/btrfs => github.com/containerd/btrfs v1.0.0
	github.com/containerd/cgroups => github.com/containerd/cgroups v1.0.1
	github.com/containerd/console => github.com/containerd/console v1.0.2
	github.com/containerd/containerd => github.com/k3s-io/containerd v1.4.8-k3s1 // k3s-release/1.4
	github.com/containerd/continuity => github.com/k3s-io/continuity v0.0.0-20210309170710-f93269e0d5c1
	github.com/containerd/cri => github.com/k3s-io/cri v1.4.0-k3s.7 // k3s-release/1.4
	github.com/containerd/fifo => github.com/containerd/fifo v1.0.0
	github.com/containerd/go-runc => github.com/containerd/go-runc v1.0.0
	github.com/containerd/ttrpc => github.com/containerd/ttrpc v1.0.2
	github.com/containerd/typeurl => github.com/containerd/typeurl v1.0.2
	github.com/containerd/zfs => github.com/containerd/zfs v1.0.0
	github.com/coreos/flannel => github.com/rancher/flannel v0.12.0-k3s1
	github.com/coreos/go-systemd => github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e
	github.com/docker/distribution => github.com/docker/distribution v2.7.1-0.20190205005809-0d3efadf0154+incompatible
	github.com/docker/docker => github.com/docker/docker v17.12.0-ce-rc1.0.20200310163718-4634ce647cf2+incompatible
	github.com/docker/libnetwork => github.com/docker/libnetwork v0.8.0-dev.2.0.20190624125649-f0e46a78ea34
	github.com/golang/protobuf => github.com/golang/protobuf v1.3.5
	github.com/juju/errors => github.com/k3s-io/nocode v0.0.0-20200630202308-cb097102c09f
	github.com/kubernetes-sigs/cri-tools => github.com/rancher/cri-tools v1.19.0-k3s1
	github.com/matryer/moq => github.com/rancher/moq v0.0.0-20190404221404-ee5226d43009
	// LOOK TO scripts/download FOR THE VERSION OF runc THAT WE ARE BUILDING/SHIPPING
	github.com/opencontainers/runc => github.com/opencontainers/runc v1.0.0-rc92
	github.com/opencontainers/runtime-spec => github.com/opencontainers/runtime-spec v1.0.3-0.20200728170252-4d89ac9fbff6
	github.com/rancher/k3s/pkg/data => ./pkg/data
	go.etcd.io/etcd => github.com/k3s-io/etcd v0.5.0-alpha.5.0.20201208200253-50621aee4aea
	golang.org/x/crypto => golang.org/x/crypto v0.0.0-20210220033148-5ea612d1eb83
	golang.org/x/net => golang.org/x/net v0.0.0-20210224082022-3d97a244fca7
	golang.org/x/sys => golang.org/x/sys v0.0.0-20210225134936-a50acf3fe073
	google.golang.org/genproto => google.golang.org/genproto v0.0.0-20200224152610-e50cd9704f63
	google.golang.org/grpc => google.golang.org/grpc v1.27.1
	gopkg.in/square/go-jose.v2 => gopkg.in/square/go-jose.v2 v2.2.2
	k8s.io/api => /home/terra/go/src/kubernetes/staging/src/k8s.io/api
	k8s.io/apiextensions-apiserver => /home/terra/go/src/kubernetes/staging/src/k8s.io/apiextensions-apiserver
	k8s.io/apimachinery => /home/terra/go/src/kubernetes/staging/src/k8s.io/apimachinery
	k8s.io/apiserver => /home/terra/go/src/kubernetes/staging/src/k8s.io/apiserver
	k8s.io/cli-runtime => /home/terra/go/src/kubernetes/staging/src/k8s.io/cli-runtime
	k8s.io/client-go => /home/terra/go/src/kubernetes/staging/src/k8s.io/client-go
	k8s.io/cloud-provider => /home/terra/go/src/kubernetes/staging/src/k8s.io/cloud-provider
	k8s.io/cluster-bootstrap => /home/terra/go/src/kubernetes/staging/src/k8s.io/cluster-bootstrap
	k8s.io/code-generator => /home/terra/go/src/kubernetes/staging/src/k8s.io/code-generator
	k8s.io/component-base => /home/terra/go/src/kubernetes/staging/src/k8s.io/component-base
	k8s.io/cri-api => /home/terra/go/src/kubernetes/staging/src/k8s.io/cri-api
	k8s.io/csi-translation-lib => /home/terra/go/src/kubernetes/staging/src/k8s.io/csi-translation-lib
	k8s.io/kube-aggregator => /home/terra/go/src/kubernetes/staging/src/k8s.io/kube-aggregator
	k8s.io/kube-controller-manager => /home/terra/go/src/kubernetes/staging/src/k8s.io/kube-controller-manager
	k8s.io/kube-proxy => /home/terra/go/src/kubernetes/staging/src/k8s.io/kube-proxy
	k8s.io/kube-scheduler => /home/terra/go/src/kubernetes/staging/src/k8s.io/kube-scheduler
	k8s.io/kubectl => /home/terra/go/src/kubernetes/staging/src/k8s.io/kubectl
	k8s.io/kubelet => /home/terra/go/src/kubernetes/staging/src/k8s.io/kubelet
	k8s.io/kubernetes => /home/terra/go/src/kubernetes
	k8s.io/legacy-cloud-providers => /home/terra/go/src/kubernetes/staging/src/k8s.io/legacy-cloud-providers
	k8s.io/metrics => /home/terra/go/src/kubernetes/staging/src/k8s.io/metrics
	k8s.io/node-api => github.com/k3s-io/kubernetes/staging/src/k8s.io/node-api v1.19.13-k3s1
	k8s.io/sample-apiserver => /home/terra/go/src/kubernetes/staging/src/k8s.io/sample-apiserver
	k8s.io/sample-cli-plugin => /home/terra/go/src/kubernetes/staging/src/k8s.io/sample-cli-plugin
	k8s.io/sample-controller => /home/terra/go/src/kubernetes/staging/src/k8s.io/sample-controller
	mvdan.cc/unparam => mvdan.cc/unparam v0.0.0-20190209190245-fbb59629db34
)

require (
	github.com/NYTimes/gziphandler v1.1.1 // indirect
	github.com/bronze1man/goStrongswanVici v0.0.0-20190828090544-27d02f80ba40 // indirect
	github.com/containerd/containerd v1.5.1
	github.com/containerd/cri v1.11.1-0.20200820101445-b0cc07999aa5
	github.com/containerd/go-cni v1.0.2 // indirect
	github.com/containerd/imgcrypt v1.1.1 // indirect
	github.com/containernetworking/plugins v0.9.1 // indirect
	github.com/coreos/flannel v0.12.0
	github.com/coreos/go-iptables v0.5.0
	github.com/coreos/go-systemd v0.0.0-20190719114852-fd7a80b32e1f
	github.com/docker/docker v17.12.0-ce-rc1.0.20200916142827-bd33bbf0497b+incompatible
	github.com/erikdubbelboer/gspt v0.0.0-20190125194910-e68493906b83
	github.com/go-bindata/go-bindata v3.1.2+incompatible
	github.com/go-sql-driver/mysql v1.4.1
	github.com/google/cadvisor v0.36.1-0.20200623171404-8450c56c21bc
	github.com/google/tcpproxy v0.0.0-20180808230851-dfa16c61dad2
	github.com/google/uuid v1.2.0
	github.com/gorilla/mux v1.7.4
	github.com/gorilla/websocket v1.4.1
	github.com/k3s-io/helm-controller v0.8.3
	github.com/k3s-io/kine v0.6.2
	github.com/kubernetes-sigs/cri-tools v0.0.0-00010101000000-000000000000
	github.com/lib/pq v1.8.0
	github.com/mattn/go-sqlite3 v1.14.4
	github.com/minio/minio-go/v7 v7.0.7
	github.com/natefinch/lumberjack v2.0.0+incompatible
	// LOOK TO scripts/download FOR THE VERSION OF runc THAT WE ARE BUILDING/SHIPPING
	github.com/opencontainers/runc v1.0.0-rc93
	github.com/opencontainers/selinux v1.8.0
	github.com/pierrec/lz4 v2.5.2+incompatible
	github.com/pkg/errors v0.9.1
	github.com/rancher/dynamiclistener v0.2.2
	github.com/rancher/remotedialer v0.2.0
	github.com/rancher/wrangler v0.6.2
	github.com/rancher/wrangler-api v0.6.0
	github.com/robfig/cron/v3 v3.0.1
	github.com/rootless-containers/rootlesskit v0.10.0
	github.com/sirupsen/logrus v1.7.0
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.6.1
	github.com/tchap/go-patricia v2.3.0+incompatible // indirect
	github.com/urfave/cli v1.22.2
	go.etcd.io/etcd v0.5.0-alpha.5.0.20200819165624-17cef6e3e9d5
	golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2
	golang.org/x/net v0.0.0-20210226172049-e18ecbb05110
	golang.org/x/sys v0.0.0-20210324051608-47abb6519492
	google.golang.org/grpc v1.33.2
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.19.13
	k8s.io/apimachinery v0.19.13
	k8s.io/apiserver v0.19.13
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/cloud-provider v0.19.13
	k8s.io/component-base v0.19.13
	k8s.io/cri-api v0.20.1
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v1.19.13
	k8s.io/utils v0.0.0-20200729134348-d5654de09c73
	sigs.k8s.io/yaml v1.2.0
)

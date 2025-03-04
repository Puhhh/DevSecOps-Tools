# Install terraform
curl -LO https://hashicorp-releases.yandexcloud.net/terraform/1.11.0/terraform_1.11.0_linux_amd64.zip \
    && unzip terraform_1.11.0_linux_amd64.zip && install terraform /usr/local/bin \
    && rm -r terraform_1.11.0_linux_amd64.zip terraform LICENSE.txt;    

# Install terragrunt
curl -LO https://github.com/gruntwork-io/terragrunt/releases/download/v0.73.16/terragrunt_linux_amd64 \
    && install terragrunt_linux_amd64 /usr/local/bin/terragrunt \
    && rm terragrunt_linux_amd64;

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
    && install kubectl /usr/local/bin/ \
    && rm kubectl;

# Install kubectlx
curl -LO https://github.com/ahmetb/kubectx/releases/download/v0.9.5/kubectx_v0.9.5_linux_x86_64.tar.gz \
    && tar -xzvf kubectx_v0.9.5_linux_x86_64.tar.gz && install kubectx /usr/local/bin \
    && rm -r kubectx_v0.9.5_linux_x86_64.tar.gz kubectx LICENSE;

# Install kubectl-tree
curl -LO https://github.com/ahmetb/kubectl-tree/releases/download/v0.4.3/kubectl-tree_v0.4.3_linux_amd64.tar.gz \
    && tar -xzvf kubectl-tree_v0.4.3_linux_amd64.tar.gz && install kubectl-tree /usr/local/bin \
    && rm -r kubectl-tree_v0.4.3_linux_amd64.tar.gz kubectl-tree LICENSE;

# Install kubeletctl
curl -LO https://github.com/cyberark/kubeletctl/releases/download/v1.13/kubeletctl_linux_amd64 \
    && install kubeletctl_linux_amd64 /usr/local/bin/kubeletctl \
    && rm kubeletctl_linux_amd64;

# Install etcdctl
curl -OL https://github.com/etcd-io/etcd/releases/download/v3.5.18/etcd-v3.5.18-linux-amd64.tar.gz && \
    tar -xzvf etcd-v3.5.18-linux-amd64.tar.gz && cp etcd-v3.5.18-linux-amd64/etcdctl /usr/local/bin && \
    chmod +x /usr/local/bin/etcdctl && rm -rf etcd-v3.5.18-linux-amd64 etcd-v3.5.18-linux-amd64.tar.gz;

# Install krew
curl -LO https://github.com/kubernetes-sigs/krew/releases/download/v0.4.4/krew-linux_amd64.tar.gz \
    && tar -xzvf krew-linux_amd64.tar.gz && install krew-linux_amd64 /usr/local/bin/krew  \
    && rm -r krew-linux_amd64.tar.gz krew-linux_amd64 LICENSE;

# Install helm
curl -LO https://get.helm.sh/helm-v3.17.1-linux-amd64.tar.gz \
    && tar -xzvf helm-v3.17.1-linux-amd64.tar.gz && mv linux-amd64/helm /usr/local/bin/  \
    && rm -rf helm-v3.17.1-linux-amd64.tar.gz linux-amd64/;

# Install CDK
curl -LO https://github.com/cdk-team/CDK/releases/download/v1.5.5/cdk_linux_amd64 \
    && install cdk_linux_amd64 /usr/local/bin/cdk \
    && rm cdk_linux_amd64;

# Install kube-hunter
curl -LO https://github.com/aquasecurity/kube-hunter/releases/download/v0.6.8/kube-hunter-linux-x86_64-refs.tags.v0.6.8 \
    && install kube-hunter-linux-x86_64-refs.tags.v0.6.8 /usr/local/bin/kube-hunter \
    && rm kube-hunter-linux-x86_64-refs.tags.v0.6.8;

# Install kubescape
curl -LO https://github.com/kubescape/kubescape/releases/download/v3.0.30/kubescape-ubuntu-latest \
    && install kubescape-ubuntu-latest /usr/local/bin/kubescape \
    && rm kubescape-ubuntu-latest;

# Install kube-bench
curl -LO https://github.com/aquasecurity/kube-bench/releases/download/v0.10.2/kube-bench_0.10.2_linux_amd64.deb \
    && dpkg -i kube-bench_0.10.2_linux_amd64.deb \
    && rm kube-bench_0.10.2_linux_amd64.deb;

# Install trivy
curl -LO https://github.com/aquasecurity/trivy/releases/download/v0.59.1/trivy_0.59.1_Linux-64bit.deb \
    && dpkg -i trivy_0.59.1_Linux-64bit.deb \
    && rm trivy_0.59.1_Linux-64bit.deb;

# Install rbac-lookup
curl -LO https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.10.2/rbac-lookup_0.10.2_Linux_x86_64.tar.gz \
    && tar -xzvf rbac-lookup_0.10.2_Linux_x86_64.tar.gz && install rbac-lookup /usr/local/bin  \
    && rm -r rbac-lookup_0.10.2_Linux_x86_64.tar.gz rbac-lookup README.md LICENSE;

# Install pluto
curl -LO https://github.com/FairwindsOps/pluto/releases/download/v5.21.3/pluto_5.21.3_linux_amd64.tar.gz \
    && tar -xzvf pluto_5.21.3_linux_amd64.tar.gz && install pluto /usr/local/bin  \
    && rm -r pluto_5.21.3_linux_amd64.tar.gz pluto README.md LICENSE;

# Install kubesec 
curl -LO https://github.com/controlplaneio/kubesec/releases/download/v2.14.2/kubesec_linux_amd64.tar.gz \
    && tar -xzvf kubesec_linux_amd64.tar.gz && install kubesec /usr/local/bin \
    && rm -r kubesec_linux_amd64.tar.gz kubesec README.md LICENSE CHANGELOG.md;

# Install age
curl -LO https://github.com/FiloSottile/age/releases/download/v1.2.1/age-v1.2.1-linux-amd64.tar.gz \
    && tar -xzvf age-v1.2.1-linux-amd64.tar.gz \
    && install ./age/age /usr/local/bin \
    && install ./age/age-keygen /usr/local/bin \
    && rm -rf age-v1.2.1-linux-amd64.tar.gz age/

# Install sops
curl -LO https://github.com/getsops/sops/releases/download/v3.9.4/sops-v3.9.4.linux.amd64 \
    && install sops-v3.9.4.linux.amd64 /usr/local/bin/sops \
    && rm sops-v3.9.4.linux.amd64;

# Install kube-linter
curl -LO https://github.com/stackrox/kube-linter/releases/download/v0.7.2/kube-linter-linux \
    && install kube-linter-linux /usr/local/bin/kube-linter \
    && rm kube-linter-linux;

# Install kdigger
curl -LO https://github.com/quarkslab/kdigger/releases/download/v1.5.1/kdigger-linux-amd64 \
    && install kdigger-linux-amd64 /usr/local/bin/kdigger \
    && rm kdigger-linux-amd64;

# Install k8spider
curl -LO https://github.com/Esonhugh/k8spider/releases/download/v3.0.0/k8spider_v3.0.0_linux_amd64.tar.gz \
    && tar -xzvf k8spider_v3.0.0_linux_amd64.tar.gz && install k8spider /usr/local/bin  \
    && rm -r k8spider_v3.0.0_linux_amd64.tar.gz k8spider README.md;

# Install dockle
curl -LO https://github.com/goodwithtech/dockle/releases/download/v0.4.15/dockle_0.4.15_Linux-64bit.deb \
    && dpkg -i dockle_0.4.15_Linux-64bit.deb \
    && rm dockle_0.4.15_Linux-64bit.deb;

# Install rbac-tool
curl -LO https://github.com/alcideio/rbac-tool/releases/download/v1.20.0/rbac-tool_v1.20.0_linux_amd64.tar.gz \
    && tar -xzvf rbac-tool_v1.20.0_linux_amd64.tar.gz && install rbac-tool /usr/local/bin  \
    && rm -r rbac-tool_v1.20.0_linux_amd64.tar.gz rbac-tool LICENSE README.md;

# Install tailspin
curl -LO https://github.com/bensadeh/tailspin/releases/download/4.0.0/tailspin-x86_64-unknown-linux-musl.tar.gz \
    && tar -xzvf tailspin-x86_64-unknown-linux-musl.tar.gz && install tspin /usr/local/bin  \
    && rm -r tailspin-x86_64-unknown-linux-musl.tar.gz tspin;

# Install pspy
curl -LO https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64 \
    && install pspy64 /usr/local/bin \
    && rm -rf pspy64

# Install dive
curl -LO https://github.com/wagoodman/dive/releases/download/v0.12.0/dive_0.12.0_linux_amd64.deb \
    && dpkg -i dive_0.12.0_linux_amd64.deb \
    && rm dive_0.12.0_linux_amd64.deb;

# Install linpeash
curl -LO https://github.com/peass-ng/PEASS-ng/releases/download/20250301-c97fb02a/linpeas.sh \
    && install linpeas.sh /usr/local/bin \
    && rm linpeas.sh

# Install inspektor-gadget
curl -LO https://github.com/inspektor-gadget/inspektor-gadget/releases/download/v0.38.0/ig-linux-amd64-v0.38.0.tar.gz \
    && tar -xzvf ig-linux-amd64-v0.38.0.tar.gz && install ig /usr/local/bin \
    && rm -r ig-linux-amd64-v0.38.0.tar.gz ig LICENSE;

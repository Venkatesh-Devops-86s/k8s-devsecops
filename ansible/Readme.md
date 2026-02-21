# site.yml - Main orchestration playbook for K8s DevSecOps cluster

# 

# Usage:

# ansible-playbook -i inventory/hosts.ini site.yml

# 

# This playbook orchestrates the complete deployment:

# 1. System preparation on all nodes

# 2. Kubernetes master initialization

# 3. Worker node joining

# 4. Platform services installation (MetalLB, Traefik, cert-manager)

# 5. Security stack (Vault, External Secrets Operator)

# 6. Observability stack (Prometheus, Grafana)

# 7. GitOps (ArgoCD)

# 

# Prerequisites:

# - Terraform infrastructure deployed (terraform/ec2)

# - inventory/hosts.ini populated with correct IPs

# - SSH key accessible at the path specified in inventory
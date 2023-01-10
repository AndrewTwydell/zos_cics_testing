ansible-galaxy collection install /Users/andrew/Documents/dev/ibm_zos_cics/ansible_collections/ibm/ibm_zos_cics -p ./collections --force

docker compose build

# 3.11
docker run --rm -it test-cics-collection-311python ansible-playbook no.defaults.yml
docker run --rm -it test-cics-collection-311python ansible-playbook module.defaults.tasks.yml
docker run --rm -it test-cics-collection-311python ansible-playbook module.defaults.global.yml

# 3.10
docker run --rm -it test-cics-collection-310python ansible-playbook no.defaults.yml
docker run --rm -it test-cics-collection-310python ansible-playbook module.defaults.tasks.yml
docker run --rm -it test-cics-collection-310python ansible-playbook module.defaults.global.yml

# 3.9
docker run --rm -it test-cics-collection-39python ansible-playbook no.defaults.yml
docker run --rm -it test-cics-collection-39python ansible-playbook module.defaults.tasks.yml
docker run --rm -it test-cics-collection-39python ansible-playbook module.defaults.global.yml

# 3.8
docker run --rm -it test-cics-collection-38python ansible-playbook no.defaults.yml
docker run --rm -it test-cics-collection-38python ansible-playbook module.defaults.tasks.yml
docker run --rm -it test-cics-collection-38python ansible-playbook module.defaults.global.yml

# 2.7
docker run --rm -it test-cics-collection-27python ansible-playbook no.defaults.yml
docker run --rm -it test-cics-collection-27python ansible-playbook module.defaults.tasks.yml

# Will fail
docker run --rm -it test-cics-collection-27python ansible-playbook module.defaults.global.yml

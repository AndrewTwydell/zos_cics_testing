ansible-galaxy collection install /Users/andrew/Documents/dev/ibm_zos_cics/ansible_collections/ibm/ibm_zos_cics -p ./collections --force

docker compose build

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~ PYTHON 3.11 ~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 3.11
docker run --rm -it test-cics-collection-311python ansible-playbook -e "@variables.yml" no.defaults.yml
docker run --rm -it test-cics-collection-311python ansible-playbook -e "@variables.yml" module.defaults.tasks.yml
docker run --rm -it test-cics-collection-311python ansible-playbook -e "@variables.yml" module.defaults.global.yml

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~ PYTHON 3.10 ~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 3.10
docker run --rm -it test-cics-collection-310python ansible-playbook -e "@variables.yml" no.defaults.yml
docker run --rm -it test-cics-collection-310python ansible-playbook -e "@variables.yml" module.defaults.tasks.yml
docker run --rm -it test-cics-collection-310python ansible-playbook -e "@variables.yml" module.defaults.global.yml

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~ PYTHON 3.9 ~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 3.9
docker run --rm -it test-cics-collection-39python ansible-playbook -e "@variables.yml" no.defaults.yml
docker run --rm -it test-cics-collection-39python ansible-playbook -e "@variables.yml" module.defaults.tasks.yml
docker run --rm -it test-cics-collection-39python ansible-playbook -e "@variables.yml" module.defaults.global.yml

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~ PYTHON 3.8 ~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 3.8
docker run --rm -it test-cics-collection-38python ansible-playbook -e "@variables.yml" no.defaults.yml
docker run --rm -it test-cics-collection-38python ansible-playbook -e "@variables.yml" module.defaults.tasks.yml
docker run --rm -it test-cics-collection-38python ansible-playbook -e "@variables.yml" module.defaults.global.yml

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~ PYTHON 2.7 ~~~~~~~~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 2.7
docker run --rm -it test-cics-collection-27python ansible-playbook -e "@variables.yml" no.defaults.yml
docker run --rm -it test-cics-collection-27python ansible-playbook -e "@variables.yml" module.defaults.tasks.yml

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~ PYTHON 3.8 (Ansible 2.11) ~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# 3.8 but with ansible 2.11
docker run --rm -it test-cics-collection-38python211 ansible-playbook -e "@variables.yml" no.defaults.yml
docker run --rm -it test-cics-collection-38python211 ansible-playbook -e "@variables.yml" module.defaults.tasks.yml

echo "~~~~~~~~~~~~ Failing Scenarios ~~~~~~~~~~~~"
echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~ PYTHON 2.7 with module defaults ~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker run --rm -it test-cics-collection-27python ansible-playbook -e "@variables.yml" module.defaults.global.yml || true
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~~~~~~ PYTHON 3.8 with Ansible 2.11 ~~~~~~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
docker run --rm -it test-cics-collection-38python211 ansible-playbook -e "@variables.yml" module.defaults.global.yml || true
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

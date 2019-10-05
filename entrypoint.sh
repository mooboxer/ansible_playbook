#!/bin/bash

ansibleOptioins=$1
if [ -n "${VAULT_PASSWORD_FILE}" ]; then
  ansibleOptioins=${ansibleOptioins}' --vault-password-file ${VAULT_PASSWORD_FILE}'
fi
if [ -n "${ANSIBLE_INVENTORY}" ]; then
  ansibleOptioins=${ansibleOptioins}' -i ${ANSIBLE_INVENTORY}'
fi
if [ -n "${ANSIBLE_SCRIPT}" ]; then
  ansibleOptioins=${ansibleOptioins}' ${ANSIBLE_SCRIPT}'
else
  ansibleOptioins=${ansibleOptioins}' site.yml'
fi

ansible-playbook ${ansibleOptions}

export LC_ALL=C.UTF-8
export LANG=C.UTF-8
oci compute instance list-vnics --compartment-id ${OCI_COMPARTMENT_OCID} | jq -r '.[][] | ."hostname-label" + ": " + ."public-ip"' | sort | sed "s/-/_/" 
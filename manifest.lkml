project_name: "cortex_poc_eash"

constant: CONNECTION_NAME {
  value: "cortex-sap-reporting"
  export: override_required
}

constant: GCP_PROJECT {
  value: "My First Project"
  export: override_required
}

constant: REPORTING_DATASET {
  value: "REPORTING"
  export: override_required
}

constant: CLIENT {
  value: "100"
  export: override_required
}


# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
#local_dependency: {
#   project: "marketplace_cortex-sap-operational"
# }

#remote_dependency:  {
#  url: "https://github.com/eash-sap/block-cortex-sap.git"
#  ref: "master"
#  override_constant: connection {
#    value: "imported_projects"
#  }
#}

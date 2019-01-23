# Class: inspector
# ===========================
#
# Download and install the AWS Inspector agent.

#
class aws-inspector {
  include aws-inspector::params

  if $region {
    validate_string($region)
  }

  include aws-inspector::install
  include aws-inspector::service
}

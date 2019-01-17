# Class: inspector
# ===========================
#
# Download and install the AWS Inspector agent.

#
class inspector {
  include inspector::params

  if $region {
    validate_string($region)
  }

  include inspector::install
  include inspector::service
}

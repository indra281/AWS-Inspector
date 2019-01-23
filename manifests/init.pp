# Class: inspector
# ===========================
#
# Download and install the AWS Inspector agent.

#
class aws_inspector {
  

  if $region {
    validate_string($region)
  }

  include aws_inspector::install
  #include aws_inspector::service
}

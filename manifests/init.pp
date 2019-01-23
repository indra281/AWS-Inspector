# Class: inspector
# ===========================
#
# Download and install the AWS Inspector agent.

#
class aws_inspector {
  

 

  include aws_inspector::install
  include aws_inspector::service
}

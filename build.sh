aws cloudformation create-stack --stack-name TheGraduate --region ap-southeast-1 \
--template-body file://cloudformation-template.json \
--parameters ParameterKey=KeyPair,ParameterValue=TheGraduate \
  ParameterKey=ClusterSize,ParameterValue=3 \
  ParameterKey=VpcId,ParameterValue=vpc-70c03f15 \
  ParameterKey=SubnetId,ParameterValue=subnet-f07caf95 \
  ParameterKey=SubnetAZ,ParameterValue=ap-southeast-1a

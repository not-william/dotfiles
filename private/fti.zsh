alias servers="aws ec2 describe-instances   --query 'Reservations[*].Instances[*].{Instance:InstanceId,Type:InstanceType,AZ:Placement.AvailabilityZone,Name:Tags[?Key==\`Name\`]|[0].Value,Project:Tags[?Key==\`project\`]|[0].Value,IP:PublicIpAddress,State:State.Name,CPUcores:CpuOptions.CoreCount,CPUthreads:CpuOptions.ThreadsPerCore}'   --output table"
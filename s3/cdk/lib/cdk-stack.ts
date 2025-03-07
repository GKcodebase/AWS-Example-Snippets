import * as cdk from 'aws-cdk-lib';
import * as s3 from 'aws-cdk-lib/aws-s3';
import { Construct } from 'constructs';

export class CdkStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // Correctly use 'this' to refer to the current stack as the scope
    const bucket = new s3.Bucket(this, 'MyCDKBucket2255');
  }
}

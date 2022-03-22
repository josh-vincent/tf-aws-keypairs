resource "aws_key_pair" "ec2-keypair" {
  for_each =  fileset(path.module,"files/keypairs/*pub")
  key_name   = basename(trimsuffix(each.key,".pub"))
  public_key = file(each.key)
  tags       =  yamldecode(templatefile("files/tags/tags.yaml",{}))
}
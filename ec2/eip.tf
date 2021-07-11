################################################
## CREATE EIP AND ASSOCIATED WITH AN INSTANCE ##
################################################
resource "aws_eip" "eip" {
  vpc      = true
}
resource "aws_eip_association" "eip_assoc" {
  depends_on  = [aws_instance.app]
  instance_id   = aws_instance.app.id
  allocation_id = aws_eip.eip.id
}
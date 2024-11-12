output "instance_id" {
    value = aws_instance.terrainstnace.id
}

output "public_ip" {
    value = aws_instance.terrainstnace.public_ip
}
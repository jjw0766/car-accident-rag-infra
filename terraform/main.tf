provider "aws" {
  region = var.region
}

# EC2 인스턴스 생성
resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  # 도커 설치 스크립트 실행
  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "docker-ec2-instance"
  }
}
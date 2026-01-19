#!/bin/bash
# 시스템 업데이트 및 도커 설치
dnf update -y
dnf install -y docker
systemctl start docker
systemctl enable docker

# ec2-user가 sudo 없이 docker 명령어를 사용할 수 있게 설정
usermod -aG docker ec2-user
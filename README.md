# HCP Terraform 데모용 AWS IAM Admin 모듈

## 개요

이 모듈은 HCP Terraform 데모 환경에서 사용할 AWS IAM Admin 권한을 가진 사용자를 생성합니다.  
Terraform을 통해 AWS 리소스를 관리할 때 필요한 관리자 권한을 손쉽게 부여할 수 있도록 설계되었습니다.

## 사용 방법

1. 이 모듈을 Terraform 구성에 포함시킵니다.
2. 필요한 경우 변수 값을 수정하여 사용자의 이름이나 정책 등을 커스터마이즈할 수 있습니다.

```hcl
module "iam_admin" {
  source = "./terraform_aws_iam_admin"
  # 필요한 경우 변수 추가
}
```

## 주요 기능

- AWS IAM Admin 사용자 생성
- 관리자 권한(AdministratorAccess) 정책 부여

## 사전 조건

- AWS 계정 및 접근 권한
- Terraform 설치 및 환경 구성

## 적용 방법

1. Terraform 초기화  
   ```
   terraform init
   ```
2. Terraform 계획 확인  
   ```
   terraform plan
   ```
3. Terraform 적용  
   ```
   terraform apply
   ```

## 참고 사항

- 이 모듈은 데모 및 테스트 용도로만 사용하시기 바랍니다.
- 실제 운영 환경에서는 최소 권한 원칙(Least Privilege Principle)을 준수하여 권한을 설정하세요.

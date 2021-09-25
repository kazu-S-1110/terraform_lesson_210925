resource "aws_vpc" "demo" {
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "demo-vpc"
  }
}

resource "aws_subnet" "demo_1a" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "192.168.0.0/25"

  availability_zone = "ap-northeast-1a"

  // もしtagsが無い場合は無名で作成される
  tags = {
    "Name" = "demo-aws-subnet"
  }
}

/*もし既存のawsサービスに付け足したい場合は取得（data)してから作成（resource）する
data "aws_vpc" "main" {
  filter = {
    Name = "main"
  }
}

resource "aws_subnet" "main_1a" {
  vpc_id = data.aws_vpc.main.id
  cidr_block = "192.168.1.0/24"

  availability_zone = "ap-northeast-1a"
}
*/

resource "aws_vpc" "demo" {
  #変数として使いたいところを書く。実際に変数に値を渡すのはmodule(インスタンス)側で行う
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "demo-vpc"
  }
}

resource "aws_subnet" "demo_1a" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = var.subnet_1a_cidr_block

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

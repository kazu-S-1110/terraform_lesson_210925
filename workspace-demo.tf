/*
terraform workspaceを使えばworkspaceに応じて変数を扱える。条件分岐も可能
またtfstateファイルも別で作られる

count = "${terraform.workspace == "default"　? 5 : 1 }" まさかの三項演算子
*/

resource "aws_vpc" "demo" {
  #変数として使いたいところを書く。実際に変数に値を渡すのはmodule(インスタンス)側で行う
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "${terraform.workspace}-demo-vpc"
  }
}

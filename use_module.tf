# terraformは実行したディレクトリ直下しかされない。
# 以下のコードを書けば別ディレクトリのファイルを参照して作成することが可能
module "my_vpc_subnet" {
  source = "./modules/vpc_subnet"

  vpc_cidr_block       = "192.168.1.0/24"
  subnet_1a_cidr_block = "192.168.1.0/25"
}

# また、複数書けば同じものが作れる（クラスとインスタンスの関係）
# 変数を代入することも可能
module "my_vpc_subnet_2" {
  source = "./modules/vpc_subnet"

  vpc_cidr_block       = "192.168.2.0/24"
  subnet_1a_cidr_block = "192.168.2.0/25"
}

module "my_vpc_subnet_3" {
  source = "./modules/vpc_subnet"

  vpc_cidr_block       = "192.168.3.0/24"
  subnet_1a_cidr_block = "192.168.3.0/25"
}

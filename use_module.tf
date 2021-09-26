# terraformは実行したディレクトリ直下しかされない。
# 以下のコードを書けば別ディレクトリのファイルを参照して作成することが可能
module "my_vpc_subnet" {
  source = "./modules/vpc_subnet"
}

# また、複数書けば同じものが作れる（クラスとインスタンスの関係）

module "my_vpc_subnet_2" {
  source = "./modules/vpc_subnet"
}

module "my_vpc_subnet_3" {
  source = "./modules/vpc_subnet"
}

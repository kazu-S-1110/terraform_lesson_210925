# 変数の定義はこのファイルで行う（変数が1箇所しか使わないならそこにまとめて書いちゃうのもあり。）
variable "vpc_cidr_block" {
  type = string
}

variable "subnet_1a_cidr_block" {
  type = string
}

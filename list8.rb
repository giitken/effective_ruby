class Parent
  attr_accessor(:name)
  def initialize(name)
    @name = "Howard"
  end
end

class Child < Parent
  attr_accessor(:grade)
  def initialize(name, grade)
    super(name)
    @grade =grade
  end
end

# サブクラスのオブジェクトを作るときは
# スーパークラスのinitializeメソッドを自動的に呼び出さない。
# 最初に見つかったバージョン(つまり子クラスのメソッド)が実行される
#
# 呼び出したいときはsuperを使って親クラスを初期化する必要がある。
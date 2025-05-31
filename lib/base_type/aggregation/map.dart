
void main() {
  foo_map();
}

// 字典
void foo_map() {
  Map<String,String> dict = {
    'about': '关于',
    'boot': '启动',
    'card': '卡片',
  };

  // 访问
  print(dict['card']); // 卡片

  // 修改
  dict['boot'] = '启动,靴子';

  // 增加
  dict['dog'] = '狗';
  dict['cat'] = '猫';

  //通过 key 删除元素
  dict.remove('cat');

  print(dict);
}


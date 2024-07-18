# Einführung
![](attachment/4e877ffbb33ef51303c74a4b772fb401.png)
![](attachment/3b8d35a20c43dda9834efa21f94bc0b5.png)
![](attachment/249e62aec8a96db5553da2adb4e7a906.png)

# Hashfunktionen
![](attachment/ade025783e51fa7be9888245d2c12d5a.png)
![](attachment/bc9688443341711e4e042022dedee5ed.png)
![](attachment/bcaf2b7e4bdcac9c9d8351368b2292ce.png)
"häufung" 是德语中的一个词，意思是“堆积”或者“积累”。在日常用语中，它可以用来描述事物或现象的聚集或集中，也可以指积累的数量增加。
![](attachment/77694f8bc2fd29f7d9ab95709e74fe45.png)
![](attachment/3599ab2ade5d096e8af5b96cc846926c.png)
![](attachment/a93a99981042d0f38bb6b7079bf5138f.png)

# Kollisionsauflösung:
- mit Verkettung (_separate chaining_)
- mit Sondierung (_open addressing_), lineare und quadratische Sondierung; _Double Hashing_

![](attachment/7df2d8eacc5d6bc07f40fdb78c21cc40.png)
![](attachment/e9f5ab809645753e42ac14bb16549194.png)
![](attachment/11e2f3c6cea7b6d31ae2dd8862f3d205.png)
![](attachment/f383b0f51a2c58f0c9b392f80fc823a7.png)
![](attachment/bc8b71b318ee5c11051644733d5b2ddf.png)
![](attachment/4f700d51cd569515e335de8a686d4089.png)
![](attachment/14a80bfaed392d7f831c975caa73a935.png)
![](attachment/a1649f5acc9d703d1ded1997f9ec9f3a.png)
![](attachment/c19f2e91b4e760c1dbb68a42329f7139.png)
![](attachment/43752b08031aa89f0d5f72d29732bd90.png)
![](attachment/c7c7e7b61cfca6b721289ba8077bbc04.png)
![](attachment/13d453c31ec77d0db5eddcc09144f68b.png)
![](attachment/32ad2b60903a8c07335753e7e077ea64.png)
![](attachment/2ee2e106dd3f1e5b25218187b874450f.png)
![](attachment/6f175b507503b2363b2aa582140c7695.png)
删除哈希表中元素的过程涉及以下步骤：
1. **定位元素**：

• 使用哈希函数找到要删除元素的初始位置。
• 如果初始位置没有找到目标元素，则按照相同的探测规则（线性或二次）继续搜索，直到找到目标元素或确认元素不存在。

2. **标记删除**：

• 一旦找到要删除的元素，将其标记为“删除”。通常，这不会直接删除元素，而是设置一个特殊标记表示该位置曾经被占用过但现在已删除，以便继续探测时能够正确跳过。

3. **重新插入受影响的元素**：

• 由于删除操作可能会影响到后续插入的元素，需要重新插入可能受影响的元素。通常，这是通过在删除位置之后继续探测并重新插入这些元素来完成的，确保哈希表的结构不被破

![](attachment/d073eb9f619dae3bb8ff5c6c32141698.png)
![](attachment/7dc1ee44fe63775d043ed358ea711359.png)


# Aufgabe 1: Hashing
![](attachment/046a2b5d064b81cc49a320ece7ef2b1d.png)
![](attachment/979858ac87d959755c04128fc857212e.png)
![](attachment/486885f18fc00be8b69f56a38497221c.png)
![](attachment/3f5778a579b1afd29bdda45ad1eecc22.png)
![](attachment/365a2f1cbf0c83b7e94ae66d794eaeed.png)
![](attachment/ff08bf8747728d76691deb9dc8507430.png)



![](attachment/1c33d60f951c21d636e816052189b6d5.png)
![](attachment/7f691971a5922bf7ddf70c8226650bca.png)
![](attachment/e8448892425a5ed92fbdadb5eb6e2fc0.png)
![](attachment/d5d0a91115549131f1071f782404e6eb.png)
![](attachment/988f0fff78130a319a5d57aebee60cf6.png)
![](attachment/1b9b2b9cbb7eff1787f7ffa5dec68914.png)
![](attachment/0d4ed4c4ae89037ced8f11ab0c8cb110.png)
![](attachment/44653577fc2c56c3b9a5833bfc868538.png)
![](attachment/7e4a256e9b705e3f942ee27bf466475f.png)
![](attachment/6f2d6e53ae4ef7e4868f09c0a53f49cd.png)
![](attachment/0fc0d765429d14480e4d7cd80e5a829e.png)
![](attachment/9584e4daddb24801985a343d56c975d9.png)
![](attachment/a6d6d45633993e22bd39539ab5c28898.png)
![](attachment/53e28101df0d3c7ff4a87834e793b255.png)
![](attachment/6c7c0908dd6dcd57a7a19ce7921156aa.png)
![](attachment/eccbbff4bcd40049da22462d95c6992a.png)
![](attachment/4c7b4f1974f527238a887fce0760913b.png)
![](attachment/bbd2ef9b73260997f36497dbd4a6dd84.png)

# Aufgabe 2 Wiederholung
![](attachment/a875e68c4c3c9958e178c3a2b6a2e3be.png)
![](attachment/f7e353fca60a6ee62779ff1d6c1c5080.png)
![](attachment/99ae07c2c6807d4b087f0ffe2cd8151e.png)
![](attachment/e1919fca1737f036c4b9015230e73b13.png)
- 2.2
![](attachment/4ce6812742da92e4750e83c110dc7cba.png)
![](attachment/1db358a0490dfe4c8f69e44731b0641d.png)
![](attachment/d96cc6265c83616802973b7289bb4b2f.png)
![](attachment/54622b3dadd568f34c87d39929a2ca3a.png)
![](attachment/a83874651967ab125c14c24ac44c17f7.png)







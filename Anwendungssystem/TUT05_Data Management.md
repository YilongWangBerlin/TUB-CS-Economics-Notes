![](attachment/5c75bfc53b411d6f143dd1f5876b3607.png)
![](attachment/178fead1b98b741f374222c070347fe9.png)
![](attachment/180b8ff9efec1c38400f236991bfedbb.png)
![](attachment/0c1818458c8db2c17942f4a39eb624c9.png)
![](attachment/468f4b4e84f66fc4fd9521a03d445361.png)

# Aufgabe 1 – XML-Wohlgeformtheit
![](attachment/12db326e222238764e45d49920fb9c84.png)
- fahrrad 要小写
- urban arrow是字符串
- leistung那里没有结束的tag，需要/
- /motor falsch platzieren
- 2不是错误，是一个content from farrad
![](attachment/42e80903217ae15382d0db22cd7d1008.png)
![](attachment/bdb0e3e5d15339f6d3bb3e1ffee74d2f.png)


![](attachment/8afe56bd485c6d7c7c5ad281b263783c.png)
![](attachment/e28cbb2f5b733af84706e44a48ce29d4.png)
![](attachment/5eb972656f4fbca808d4819888c38770.png)
![](attachment/842c61f725c4c57f9f903f371654a52e.png)
![](attachment/2d6e0d20ed38937c4481aef1b0172bf4.png)

# Aufgabe 2 – XML Schema
![](attachment/91bf2a1e4a7991ea1b6fa916e8a0ad27.png)
![](attachment/b6fa8b09b78cf485000d89e092f137f1.png)
![](attachment/206d78ce1b1afd2954604aae22e37091.png)
![](attachment/05c63f0941137278200aaf43a7f92381.png)

# Aufgabe 3 – XML-Schema
![](attachment/d35698d2e34b007769d5f49871bf9a81.png)
block3
![](attachment/248e0b941c52776f2c850841fdf0b818.png)
```xsd
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">  
    <xsd:element name="Adresse" type="adresseTyp"/>  
  
    <xsd:complexType name="adresseTyp">  
        <xsd:all>  
            <xsd:element name="Firmenname" type="xsd:string"/>  
            <xsd:element name="Firmenzusatz" type="firmnenzusatzTyp" minOccurs="0"/>  
            <xsd:element name="Stresse" type="strassTyp"/>  
            <xsd:element name="Hausnummer" type="xsd:positiveInteger"/>  
            <xsd:element name="PLZ" type="plzTyp"/>  
            <xsd:element name="Stadt" type="stadtTyp"/>  
            <xsd:element name="Telefonnummer" type="telefonTyp" minOccurs="0"/>  
        </xsd:all>  
    </xsd:complexType>  
  
    <xsd:simpleType name="firmnenzusatzTyp">  
        <xsd:restriction base="xsd:string">  
            <xsd:enumeration value="GmbH"/>  
            <xsd:enumeration value="AG"/>  
        </xsd:restriction>  
    </xsd:simpleType>  
  
    <xsd:simpleType name="strassTyp">  
        <xsd:restriction base="xsd:string">  
            <xsd:pattern value="[^0-9]+"/>  
        </xsd:restriction>  
    </xsd:simpleType>  
  
    <xsd:simpleType name="plzTyp">  
        <xsd:restriction base="xsd:positiveInteger">  
            <xsd:pattern value="[0-9][0-9][0-9][0-9][0-9]"/>  
        </xsd:restriction>  
    </xsd:simpleType>  
        <xsd:simpleType name="stadtTyp">  
        <xsd:restriction base="xsd:string">  
            <xsd:pattern value="[A-Z][a-z]+(\-[A-Z][a-z]+)*"/>  
        </xsd:restriction>  
    </xsd:simpleType>  
  
    <xsd:complexType name="telefonTyp">  
        <xsd:sequence>  
            <xsd:element name="Vorwahl" type="vorwahlTyp"/>  
            <xsd:element name="Nummer" type="nummerTyp"/>  
  
        </xsd:sequence>  
    </xsd:complexType>  
  
    <xsd:simpleType name="vorwahlTyp">  
        <xsd:restriction base="xsd:string">  
            <xsd:pattern value="0[1-9][0-9]{1,3}"/>  
        </xsd:restriction>  
    </xsd:simpleType>  
  
    <xsd:simpleType name="nummerTyp">  
        <xsd:restriction base="xsd:string">  
            <xsd:pattern value="[1-9][0-9][0-9][0-9]+"/>  
        </xsd:restriction>  
    </xsd:simpleType>  
</xsd:schema>
```

```xml
<?xml version="1.0" encoding="utf-8" ?>  
<Adresse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  
         xsi:noNamespaceSchemaLocation="adresse.xsd">  
    <Firmenname>Wang Enterprise</Firmenname>  
    <Firmenzusatz>GmbH</Firmenzusatz>  
    <Stresse>Maxmustermannstr</Stresse>  
    <Hausnummer>12</Hausnummer>  
    <PLZ>12345</PLZ>  
    <Stadt>Berlin_Dessau</Stadt>  
    <Telefonnummer>        
	    <Vorwahl>045</Vorwahl>  
        <Nummer>2654876</Nummer>  
    </Telefonnummer>  
</Adresse>
```
![](attachment/68f8b060ec5e9fd15e91a4e793104f5a.png)
![](attachment/60f5f5580f00631b4fda8eef342c51ff.png)
等价于![](attachment/0117556d6fa1cb339484cd7e2bc46dfd.png)
![](attachment/ea774bcf70c16058c31ab7c2498e04c2.png)


## 正则表达式（Regular Expressions，简称Regex）
是一种强大的文本处理工具，可以用来匹配、搜索、替换和操作字符串。以下是一些常见的正则表达式用法及其示例：

### 1. 匹配单个字符
- `.` 匹配除换行符外的任意单个字符。
  - 示例：`a.b` 可以匹配 `aab`, `acb`, `a3b` 等。

### 2. 字符类
- `[abc]` 匹配字符 `a`, `b` 或 `c`。
  - 示例：`b[aeiou]t` 可以匹配 `bat`, `bet`, `bit`, `bot`, `but`。

- `[^abc]` 匹配除 `a`, `b`, `c` 之外的任何字符。
  - 示例：`[^0-9]` 匹配任何非数字字符。

### 3. 字符范围
- `[a-z]` 匹配任意小写字母。
  - 示例：`[a-z]` 可以匹配 `a`, `b`, `c`, ..., `z`。

- `[A-Z]` 匹配任意大写字母。
  - 示例：`[A-Z]` 可以匹配 `A`, `B`, `C`, ..., `Z`。

- `[0-9]` 匹配任意数字。
  - 示例：`[0-9]` 可以匹配 `0`, `1`, `2`, ..., `9`。

### 4. 预定义字符类
- `\d` 匹配任意数字，相当于 `[0-9]`。
  - 示例：`\d{2}` 可以匹配 `23`, `45`, `67` 等。

- `\D` 匹配任意非数字字符，相当于 `[^0-9]`。
  - 示例：`\D` 可以匹配 `a`, `B`, `!` 等。

- `\w` 匹配任意字母、数字或下划线，相当于 `[a-zA-Z0-9_]`。
  - 示例：`\w+` 可以匹配 `hello`, `world_123` 等。

- `\W` 匹配任意非字母、数字或下划线的字符，相当于 `[^a-zA-Z0-9_]`。
  - 示例：`\W` 可以匹配 `!`, `@`, `#` 等。

- `\s` 匹配任意空白字符（空格、制表符、换行符等）。
  - 示例：`\s` 可以匹配空格，制表符，换行符等。

- `\S` 匹配任意非空白字符。
  - 示例：`\S` 可以匹配 `a`, `1`, `!` 等。

### 5. 数量词
- `*` 匹配前面的字符0次或多次。
  - 示例：`a*` 可以匹配空字符串, `a`, `aa`, `aaa` 等。

- `+` 匹配前面的字符1次或多次。
  - 示例：`a+` 可以匹配 `a`, `aa`, `aaa` 等，但不匹配空字符串。

- `?` 匹配前面的字符0次或1次。
  - 示例：`a?` 可以匹配空字符串, `a`。

- `{n}` 精确匹配前面的字符n次。
  - 示例：`a{3}` 只能匹配 `aaa`。

- `{n,}` 匹配前面的字符至少n次。
  - 示例：`a{2,}` 可以匹配 `aa`, `aaa`, `aaaa` 等。

- `{n,m}` 匹配前面的字符至少n次，至多m次。
  - 示例：`a{2,4}` 可以匹配 `aa`, `aaa`, `aaaa`。

### 6. 边界匹配
- `^` 匹配字符串的开头。
  - 示例：`^hello` 匹配以 `hello` 开头的字符串。

- `$` 匹配字符串的结尾。
  - 示例：`world$` 匹配以 `world` 结尾的字符串。

### 7. 分组和反向引用
- `()` 用于分组。
  - 示例：`(abc)+` 可以匹配 `abc`, `abcabc`, `abcabcabc` 等。

- `\1`, `\2`, ... 反向引用，用于引用前面的分组。
  - 示例：`(\d)\1` 可以匹配 `00`, `11`, `22` 等。

### 8. 选择
- `|` 表示选择，匹配左边或右边的表达式。
  - 示例：`abc|def` 可以匹配 `abc` 或 `def`。

### 9. 转义字符
- `\` 用于转义字符，使其具有字面意义。
  - 示例：`\.` 可以匹配 `.` 字符，`\\` 可以匹配 `\` 字符。

这些只是正则表达式的一些常见用法。正则表达式非常强大，可以用于复杂的文本匹配和处理任务。根据实际需要，可以组合和嵌套使用这些模式来构建更复杂的正则表达式。

# Aufgabe 4 – XML-Schema
![](attachment/0cabbb648d939ea5d3e48fc13a519c68.png)
![](attachment/1361b40cdb790cb8aa92c7d82401e4ec.png)
```xml
<?xml version="1.0" encoding="UTF-8"?>  
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">  
  
    <xs:element name="endpoint" type="endpointType"/>  
  
    <xs:complexType name="endpointType">  
        <xs:sequence>  
            <xs:element name="procedure" type="procedureType" minOccurs="0" maxOccurs="unbounded"/>  
        </xs:sequence>  
        <xs:attribute name="host" type="xs:string" use="required"/>  
        <xs:attribute name="port" type="xs:integer" use="required"/>  
    </xs:complexType>  
  
    <xs:complexType name="procedureType">  
        <xs:sequence>  
            <xs:element name="paramIn" type="paramType" minOccurs="1" maxOccurs="unbounded"/>  
            <xs:element name="paramOut" type="paramType" minOccurs="1" maxOccurs="unbounded"/>  
        </xs:sequence>  
        <xs:attribute name="name" type="xs:string" use="required"/>  
    </xs:complexType>  
  
    <xs:complexType name="paramType">  
        <xs:attribute name="name" type="xs:string" use="required"/>  
        <xs:attribute name="type" type="typeType" use="required"/>  
    </xs:complexType>  
  
    <xs:simpleType name="typeType">  
        <xs:restriction base="xs:string">  
            <xs:enumeration value="string"/>  
            <xs:enumeration value="integer"/>  
            <xs:enumeration value="double"/>  
            <xs:enumeration value="empty"/>  
        </xs:restriction>  
    </xs:simpleType>  
  
</xs:schema>
```


# Aufgabe 5 – XPath
![](attachment/f460448dd7f7449416699b0718e86b21.png)
![](attachment/4c26c423b2a1162ea3eb582002e3290e.png)
![](attachment/7efe8292ce3650ca153f2ec46c431f94.png)
![](attachment/7fb9e56c2345795d1a8229de49155c46.png)



## XPath

- 为了处理XML，我们必须访问单个元素及其内容，并在必要时读取其属性。
- 要访问特定元素，取决于名称、过滤条件或层级关系，可以使用XPath。
- XPath需要一个表达式，该表达式由到存储位置的跳转组成。
- 这些跳转每个由3部分组成：
  - **Axis**：从当前节点出发的方向（如果没有指定，则默认指向子节点）
  - **Node Test**：指定我们要选择的节点
  - **Predicate**：根据指定的条件过滤节点（可选）

## Node Test

- 要指定在哪个节点执行下一个跳转，可以：
  - 指定元素的名称
  - 使用 `*` 来获取所有元素，取决于Axis
  - 使用 `@` 来指定属性名称
- 除此之外，还有一些函数，使我们可以访问XML的各种元素或其他组件：
  - `text()`：从当前节点获取内容（不包括嵌套元素）
  - `node()`：获取当前节点中的所有元素



![](attachment/4947af6d63bc9fce8166c7355bc25c0f.png)
![](attachment/3fead7c1f72b4a25656549d37f3a61d4.png)
![](attachment/a205f1b146d3e706facb55e2e57b7a90.png)
![](attachment/fdbfbf9b64514837ade2fd8ceb2340ab.png)


# Aufgabe 6 – XPath
![](attachment/61f409104cf75c932c7f9eb481d363d5.png)
![](attachment/c421233f220c0d3dff8f11f6cef23e66.png)
![](attachment/384f722002a8eb3e221d87864b9136a2.png)

# Aufgabe 7 – XPath 
Gegeben sei der folgende Aufbau eines XML-Dokumentes
![](attachment/c9daf40c286015f602b65db48c00e60c.png)
Lösung:
![](attachment/f8b01bfb46773fb1557c614c66465a59.png)
![](attachment/3d8d21d2f9154d8f0309badc9699833f.png)

# Aufgabe 8 – XPath
![](attachment/2fee4b2434bd9ebcd0b958f5fc64c04f.png)

# Aufgabe 9 – Diverses zu XML
![](attachment/3ec16d0589fe338ebfd3324037528a45.png)

![](attachment/6c10b249801b4acc1667bc03c8f78a9a.png)

# Aufgabe 10 – JSON
![](attachment/cca00e9ceeb48747734046e287e47e6b.png)
![](attachment/adc9ec021f78667d59f913db93355a2a.png)
![](attachment/cfab9c165e65f01ec88a627dfd535e5f.png)

# Aufgabe 11 – JSON

![](attachment/146704b14e46bb2cc8e5e302f471c667.png)![](attachment/bc967d4e484bbed824c7c4646e9ee8fa.png)
![](attachment/8cd8b6be439a1441dabb4d194eb68f9e.png)

![](attachment/52483b6aaf0ac1ed14e86c11b2ce359c.png)
![](attachment/da18af4ea02d25bb559b4e6f554b8ff6.png)
![](attachment/e32bf6b858192f7c39b5ac3174eaf8ec.png)

# Aufgabe 12 – Protobuf
![](attachment/235459b3a031ed09046702d3e5a121e5.png)
![](attachment/b84b2ca41ed5cad13eb813f42c363163.png)
![](attachment/ee90bb7b71c65b60a834882f457be118.png)
之后通过maven编译，如图![](attachment/98618bca6c5584c40c9a61306a85d4bd.png)
之后会生成target文件夹，接下来再将dir标记为root，这样main/java里的java文件就可以识别到生成的代码了
![](attachment/c87ecc2ae40604b22380a1d2c62bb539.png)

![](attachment/736d85fbbb30d42a2bc4f03866decab0.png)

```java
import java.io.FileInputStream;  
import java.io.FileNotFoundException;  
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.util.Arrays;  
  
public class ProtoUser {  
    public static void main(String[] args) throws IOException {  
       /*  
       // 注释部分为数据构建和序列化代码
        UsersOuterClass.User user1 = buildUser(15, UsersOuterClass.User.Role.ADMIN, "Klaus","Mueller");  
        UsersOuterClass.User user2 = buildUser(17, UsersOuterClass.User.Role.OPERATOR, "Peter","Meier");        
        UsersOuterClass.User user3 = buildUser(42, UsersOuterClass.User.Role.OPERATOR, "Hans","Wiwi");  
        UsersOuterClass.User[] userArray = {user1,user2,user3};  
        UsersOuterClass.Users users = buildUsers(userArray);  
        users.writeTo(new FileOutputStream("user.bin"));  
        */  

		// 反序列化从文件中读取数据并输出
        UsersOuterClass.Users users = UsersOuterClass.Users.parseFrom(new FileInputStream("user.bin"));  
  
        System.out.println(users);  
  
    }  
  
    public static UsersOuterClass.User buildUser(int id, UsersOuterClass.User.Role role, String firstname, String lastname){  
        return UsersOuterClass.User.newBuilder()  
                .setId(id)  
                .setRole(role)  
                .setFirstname(firstname)  
                .setLastname(lastname)  
                .build();  
    }  
  
    public static UsersOuterClass.Users buildUsers(UsersOuterClass.User[] users){  
        UsersOuterClass.Users.Builder usersBuilder = UsersOuterClass.Users.newBuilder();  
  
        for(UsersOuterClass.User user : users){  
            usersBuilder.addUsers(user);  
        }  
        return usersBuilder.build();  
    }  
}
```




![](attachment/5278dee80fb23300ec8edb607a13c247.png)
![](attachment/fc2712868d5671d872968bead50d12a8.png)
![](attachment/b0b4bae8f75486ee314cc95471adef28.png)
![](attachment/04d0396131efb1a23478af0c18f1dfd9.png)
![](attachment/9cd6c68a655a8d63d4c59367e98d3778.png)
z.b mongoDB

![](attachment/4ee09a39e9681931519e3593e2b09ed2.png)
![](attachment/87d1ad95fca516d723a5daa30e55bbd7.png)
![](attachment/c421e7372d89130b371f29ec0e041a06.png)

# Aufgabe 13 – Datenbanken
![](attachment/46005a0e9adaa71ad4a248c61b1aaf7a.png)
![](attachment/66c48e39b8b3a3793f2907bd2d1431f4.png)
Key value kann nicht gejoint werden und suche der values nach keys und bei relationale nicht der fall

1. **为每个用户存储一个Web应用程序的当前状态（Key-Value）**：
   - **解释**：Key-Value数据库适合存储简单的键值对数据，如用户状态，查询速度快。
  
2. **存储一个流媒体服务的电影元数据（Document Store）**：
   - **解释**：Document Store（文档存储）数据库适合存储半结构化数据，例如电影元数据，可以灵活地处理各种数据格式。

3. **IoT传感器定期生成数据，需存储这些数据（Time Series Database）**：
   - **解释**：时间序列数据库专门用于处理和存储时间序列数据，适合存储传感器定期生成的连续数据。

4. **分析自行车骑行以识别不安全的地点（Geographic Database）**：
   - **解释**：地理数据库能够有效处理和分析地理空间数据，适合进行地理位置相关的分析。

5. **分析交易以识别欺诈行为（Graph Database）**：
   - **解释**：图数据库可以高效地处理和分析复杂的关系网络，适合用于识别交易中的欺诈行为。

6. **银行存储客户的账户和交易（Relational Database）**：
   - **解释**：关系数据库擅长处理结构化数据，能够支持复杂的查询和事务处理，是金融数据存储的理想选择。

7. **实时分析大量来自Web应用程序和社交媒体的数据以识别趋势（Column Store）**：
   - **解释**：列存储数据库能够高效地处理大规模数据分析，适合实时数据处理，并支持复杂查询，是大数据分析的理想选择。

8. **医院存储关于患者的数据，如他们以前的诊断、测试结果等。这些数据必须能被员工实时调用（Relational Database）**：
   - **解释**：关系数据库适合存储结构化数据，并且支持复杂查询和事务处理，能够确保数据的一致性和实时性，是医疗数据存储的理想选择。

9. **在一个网站前需要配置一个缓存数据库，用于存储每个用户的重要数据以便快速访问（Key-Value Store）**：
   - **解释**：键值存储数据库能够快速读写数据，适合用于缓存机制，可以显著提高网站的响应速度和用户体验。

10. **“购买了此产品的客户还购买了以下产品”在一个网上商店中（Graph Database）**：
   - **解释**：图数据库擅长处理和分析复杂的关系网络，适合用于推荐系统，可以高效地关联和查询产品与客户之间的关系，提升推荐的准确性和相关性。

![](attachment/f2d75dd5b19e3f3113868a38df377d7d.png)
![](attachment/97acff7996b3581e548349f4b5ed2086.png)
![](attachment/6e19969d23a8e0d9d2dbd604177ba25b.png)
![](attachment/3985d1d130c197a44c323c0e43028711.png)
后续folien见vl （jpa）
# Aufgabe 14 – SQL
![](attachment/86f12846784049a983e511a3dd35f38a.png)
solution:
![](attachment/c6c185950e373961a3486ea5377e724a.png)


# Aufgabe 15 - Object-Relational Mapping
![](attachment/72b1dbe9c0fce3528e8b33478f8d5b01.png)
![](attachment/6bcda6117e32ae422ea808b953126fcc.png)
![](attachment/4f0224f8b906ab19be40a1d4d21d0b95.png)
![](attachment/7107aba73498b11b08786f3604785ea7.png)
![](attachment/0361ae9c20ba306aea871536816465d6.png)
![](attachment/47e34be3f7e7dde1a33476e38167b9ec.png)

# Aufgabe 16 – ACID
![](attachment/04d6fff0944cc167e40fc1dde70c3793.png)
![](attachment/fd327528ce71cfb92678fc09a5a666aa.png)![](attachment/435c2fe91f875e1cad53ac824da95ed6.png)
### ACID属性

#### 原子性 (Atomicity):
事务要么完全执行，要么完全不执行。执行程序对数据的影响只有在事务达到“提交”点后才会变得可见。如果执行程序未能达到这一点，事务将回滚系统到事务开始时的状态。

**例子**: 设想一个银行转账操作，从账户A转账100元到账户B。在原子性下，转账要么全部完成，即100元从A账户扣除并加到B账户，要么完全不执行，A和B账户的余额保持不变。

#### 一致性 (Consistency):
事务将系统从一个一致状态转变为另一个一致状态。

**例子**: 银行账户的余额在转账前后保持一致。例如，如果账户A和账户B在转账前的总余额是1000元，那么无论怎样转账，总余额在转账后仍然是1000元。

#### 隔离性 (Isolation):
事务与其他事务隔离进行，意味着每个事务都像在独占资源的环境中操作一样。每个事务将“看到”的只有一致的数据（只包含已提交事务的修改）。

**例子**: 如果两个用户同时尝试从同一个账户转账钱，隔离性确保每个转账操作不会相互影响，最终的余额会反映两个转账的独立结果。

#### 持久性 (Durability):
当执行程序被通知事务已成功完成（事务提交）时，该事务对数据的所有更新都将被永久保存，并且能在系统故障/错误后存活下来。更新的数据是持久的。

**例子**: 在银行系统中，一旦转账操作完成并确认，即使系统随后发生崩溃，转账记录也会永久保存在数据库中。


## 在已有项目中使用flyway管理数据库

> 原则：flyway不会影响当前正在使用的环境，且生产环境下暂不开启flyway

测试目标
1. profile为dev时不会改动现有库中的数据
新加表或者更改表结构时可以通过flyway起作用

2. profile为prod时flyway不起作用


实现目标一需要配置在dev环境配置中开启这个选项`flyway.baseline-on-migrate=true`

实现目标二需要在prod配置中开启`flyway.enabled=false` 此时在生产环境下flyway不起作用，可以将dev环境下的脚本手动拷贝给DBA去执行，待flyway使用成熟之后在可以启用
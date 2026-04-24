# 参考资料

## 本期使用的数据

| 名称 | 来源 | 许可证或使用说明 | 用途 |
| --- | --- | --- | --- |
| 示例温度-高程数据 | 本仓库 notebook 内构造的小型教学数据 | 仅用于演示；不代表真实气象观测 | 线性回归拟合、预测、残差诊断与作图 |

## 本期引用的资料

| 资料 | 用途 | 链接 |
| --- | --- | --- |
| NOAA National Weather Service Glossary: Lapse Rate | 说明 lapse rate、environmental lapse rate 和 dry adiabatic lapse rate 的气象学含义 | https://forecast.weather.gov/glossary.php?word=lapse+rate |
| scikit-learn `LinearRegression` documentation | 说明 `LinearRegression` 是 ordinary least squares linear regression，并最小化残差平方和 | https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.LinearRegression.html |

## 本期使用的软件

| 软件包 | 用途 | 备注 |
| --- | --- | --- |
| Python | 运行示例代码 | 使用本地 Python 3 环境 |
| pandas | 表格数据处理 | 构造和查看示例数据 |
| scikit-learn | 线性回归拟合 | 使用 `sklearn.linear_model.LinearRegression` |
| matplotlib | 作图 | 生成散点图、拟合图和残差图 |

## 发布前复核

本期数据为教学构造数据，不需要外部数据许可证。正式发布前仍需复核所有外部链接是否可访问。

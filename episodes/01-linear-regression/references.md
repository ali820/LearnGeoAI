# 参考资料

## 本期使用的数据

| 名称 | 来源 | 许可证或使用说明 | 用途 |
| --- | --- | --- | --- |
| NDVI、降水、温度和高程教学构造数据 | 本仓库 notebook 内用固定随机种子构造 | 仅用于教学演示；不代表真实观测 | 多元线性回归、预测、标准化系数、残差图和 VIF 共线性诊断 |

## 本期引用的资料

| 资料 | 用途 | 链接 |
| --- | --- | --- |
| scikit-learn `LinearRegression` documentation | 说明 `LinearRegression` 的最小二乘线性回归接口、拟合和预测流程 | https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.LinearRegression.html |
| statsmodels `OLS` documentation | 说明 `statsmodels.regression.linear_model.OLS` 的 ordinary least squares 模型接口 | https://www.statsmodels.org/stable/generated/statsmodels.regression.linear_model.OLS.html |
| statsmodels `variance_inflation_factor` documentation | 说明 VIF 的计算接口，并作为 “VIF > 5 表示解释变量与其他解释变量高度共线” 这一经验阈值的来源 | https://www.statsmodels.org/dev/generated/statsmodels.stats.outliers_influence.variance_inflation_factor.html |

## 本期使用的软件

| 软件包 | 用途 | 备注 |
| --- | --- | --- |
| Python | 运行示例代码 | 使用本地 Python 3 环境 |
| NumPy | 构造可复现的教学数据 | 使用固定随机种子 |
| pandas | 表格数据处理 | 构造和查看示例数据 |
| statsmodels | OLS summary 和 VIF 诊断 | 使用 `OLS` 和 `variance_inflation_factor` |
| scikit-learn | 线性回归预测和标准化处理 | 使用 `LinearRegression` 和 `StandardScaler` |
| matplotlib | 作图 | 生成 5 张教学图件 |

## 发布前复核

本期数据为教学构造数据，不需要外部数据许可证。正式发布前仍需复核所有外部链接是否可访问。

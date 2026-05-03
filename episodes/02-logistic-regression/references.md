# 参考资料

## 本期使用的数据

| 名称 | 来源 | 许可证或使用说明 | 用途 |
| --- | --- | --- | --- |
| 示例滑坡易发性数据 | 本仓库 notebook 内构造的小型教学数据 | 仅用于演示；不代表真实滑坡编目 | Logistic 回归建模、预测、性能评估与作图 |

## 本期引用的资料

| 资料 | 用途 | 链接 |
| --- | --- | --- |
| scikit-learn `LogisticRegression` documentation | 说明 `LogisticRegression` 的参数、方法和数学原理 | https://scikit-learn.org/stable/modules/generated/sklearn.linear_model.LogisticRegression.html |
| scikit-learn User Guide: Logistic regression | 解释 Logistic 回归的 L1/L2 正则化、多分类扩展等 | https://scikit-learn.org/stable/modules/linear_model.html#logistic-regression |
| USGS Landslide Hazards Program | 滑坡灾害背景知识和研究方法介绍 | https://www.usgs.gov/programs/landslide-hazards |
| Fawcett, T. (2006). An introduction to ROC analysis. Pattern Recognition Letters, 27(8), 861-874. | ROC 曲线和 AUC 的统计学解释 | https://doi.org/10.1016/j.patrec.2005.10.010 |

## 本期使用的软件

| 软件包 | 用途 | 备注 |
| --- | --- | --- |
| Python | 运行示例代码 | 使用本地 Python 3 环境 |
| pandas | 表格数据处理 | 构造和查看示例数据 |
| numpy | 数值计算 | Sigmoid 函数实现 |
| scikit-learn | Logistic 回归建模 | 使用 `sklearn.linear_model.LogisticRegression` |
| matplotlib | 作图 | 生成 Sigmoid 曲线、混淆矩阵、ROC 曲线等 |

## 延伸阅读

### 滑坡易发性评价方法

| 文献/资料 | 内容 |
| --- | --- |
| Reichenbach, P., Rossi, M., Malamud, B. D., Mihir, M., & Guzzetti, F. (2018). A review of statistically-based landslide susceptibility models. Earth-Science Reviews, 180, 60-91. | 滑坡易发性建模方法的系统综述 |
| Guzzetti, F., Reichenbach, P., Cardinali, M., Galli, M., & Ardizzone, F. (2005). Probabilistic landslide hazard assessment at the basin scale. Geomorphology, 72(1-4), 272-299. | 滑坡危险性评价方法案例 |

### 分类模型评估

| 文献/资料 | 内容 |
| --- | --- |
| Fawcett, T. (2006). An introduction to ROC analysis. Pattern Recognition Letters, 27(8), 861-874. | ROC 分析的经典教程 |
| Powers, D. M. W. (2011). Evaluation: From precision, recall and F-measure to ROC, informedness, markedness and correlation. Journal of Machine Learning Technologies, 2(1), 37-63. | 分类评估指标的全面介绍 |

### 样本不平衡处理

| 方法 | 说明 |
| --- | --- |
| 过采样 (Oversampling) | 增加少数类样本，如 SMOTE 算法 |
| 欠采样 (Undersampling) | 减少多数类样本 |
| 类别权重 (Class weight) | 在损失函数中给予少数类更高权重 |

## 发布前复核

本期数据为教学构造数据，不需要外部数据许可证。已完成复核：

- 外部链接已补充为官方文档、USGS 页面和带 DOI 的文献链接。
- 图件已生成并放置在 `figures/` 目录。
- notebook 已在本地执行通过。

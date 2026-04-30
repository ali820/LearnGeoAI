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
| Wikipedia: Logistic function | Sigmoid 函数的数学定义和性质 | https://en.wikipedia.org/wiki/Logistic_function |
| Wikipedia: Receiver operating characteristic | ROC 曲线和 AUC 的定义与解释 | https://en.wikipedia.org/wiki/Receiver_operating_characteristic |
| USGS Landslide Hazards Program | 滑坡灾害背景知识和研究方法介绍 | https://www.usgs.gov/programs/landslide-hazards |

## 本期使用的软件

| 软件包 | 用途 | 备注 |
| --- | --- | --- |
| Python | 运行示例代码 | 使用本地 Python 3 环境 |
| pandas | 表格数据处理 | 构造和查看示例数据 |
| numpy | 数值计算 | Sigmoid 函数实现 |
| scikit-learn | Logistic 回归建模 | 使用 `sklearn.linear_model.LogisticRegression` |
| matplotlib | 作图 | 生成 Sigmoid 曲线、混淆矩阵、ROC 曲线等 |
| seaborn | 统计可视化 | 辅助绑图 |

## 延伸阅读

### 滑坡易发性评价方法

| 文献/资料 | 内容 |
| --- | --- |
| Reichenbach et al. (2018) A review of statistically-based landslide susceptibility models | 滑坡易发性建模方法的系统综述 |
| Guzzetti et al. (2005) Landslide hazard assessment | 滑坡危险性评价方法综述 |
| 中国地质调查局地质灾害调查规范 | 国内滑坡调查和评价的技术规范 |

### 分类模型评估

| 文献/资料 | 内容 |
| --- | --- |
| Fawcett (2006) An introduction to ROC analysis | ROC 分析的经典教程 |
| Powers (2011) Evaluation: from precision, recall and F-measure to ROC | 分类评估指标的全面介绍 |

### 样本不平衡处理

| 方法 | 说明 |
| --- | --- |
| 过采样 (Oversampling) | 增加少数类样本，如 SMOTE 算法 |
| 欠采样 (Undersampling) | 减少多数类样本 |
| 类别权重 (Class weight) | 在损失函数中给予少数类更高权重 |

## 发布前复核

本期数据为教学构造数据，不需要外部数据许可证。正式发布前仍需复核：

- [ ] 所有外部链接是否可访问
- [ ] 图件是否已生成并放置在 figures/ 目录
- [ ] notebook 是否可完整运行

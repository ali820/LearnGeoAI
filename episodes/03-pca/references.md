# 第 03 期参考资料：主成分分析与多源环境变量降维

## 数据说明

本期使用教学构造数据 `data/environment_pca_demo.csv`，由 notebook 中的随机种子和显式公式生成，用于解释 PCA 的计算流程和图件解读方法。

该数据不代表任何真实区域或真实观测结果，不应用于科学结论或业务决策。

## 主要方法来源

1. scikit-learn developers. `sklearn.decomposition.PCA` documentation.  
   https://scikit-learn.org/stable/modules/generated/sklearn.decomposition.PCA.html

2. scikit-learn developers. Decomposing signals in components: Principal component analysis.  
   https://scikit-learn.org/stable/modules/decomposition.html#pca

3. scikit-learn developers. `sklearn.preprocessing.StandardScaler` documentation.  
   https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.StandardScaler.html

4. Jolliffe, I. T., & Cadima, J. (2016). Principal component analysis: a review and recent developments. *Philosophical Transactions of the Royal Society A*, 374, 20150202.  
   https://doi.org/10.1098/rsta.2015.0202

## 软件与依赖

- Python
- NumPy
- pandas
- matplotlib
- scikit-learn

## 证据纪律说明

- 本期没有使用真实地学数据集。
- 文中关于 PCA 的解释基于上述方法资料和本期教学构造数据。
- 文中没有声称 PCA 自动识别地学机制，也没有把解释方差直接等同于预测能力。
- 若后续替换为真实数据，应补充数据来源、许可证、下载日期、变量定义、空间范围、时间范围和预处理流程。

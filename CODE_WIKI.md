# LearnGeoAI 项目 Code Wiki

## 目录

- [项目概述](#项目概述)
- [项目架构](#项目架构)
- [目录结构](#目录结构)
- [核心模块说明](#核心模块说明)
  - [episodes 模块](#episodes-模块)
  - [algorithms 模块](#algorithms-模块)
  - [tasks 模块](#tasks-模块)
  - [templates 模块](#templates-模块)
- [数据流与工作流程](#数据流与工作流程)
- [依赖关系](#依赖关系)
- [项目运行方式](#项目运行方式)
- [开发规范](#开发规范)
- [扩展指南](#扩展指南)

---

## 项目概述

**LearnGeoAI** 是一个面向地学、遥感、GIS、环境、生态、城市和灾害研究者的 GeoAI 方法连载项目。项目采用"微信公众号连载 + GitHub 知识库"的双轨方式：

- **公众号**：负责通俗讲解和图文传播
- **GitHub**：负责保存完整文章、代码、图件、数据说明和参考资料

### 项目定位

本项目按方法发展脉络推进，每篇文章用一个具体地学任务讲清楚一个统计学习、机器学习或人工智能方法。连载主线分为五个阶段：

| 阶段 | 内容 |
| --- | --- |
| 统计学方法 | 回归、降维、空间统计、时间序列、贝叶斯方法 |
| 传统机器学习 | KNN、聚类、决策树、随机森林、SVM、GBDT/XGBoost |
| 深度学习 | CNN、RNN、Transformer、GNN 及其地学应用 |
| 基础模型 | 自监督学习、遥感基础模型、地学基础模型 |
| 大模型 | GeoLLM、视觉语言模型、RAG、Agent、多模态地学智能 |

---

## 项目架构

### 架构图

```
┌─────────────────────────────────────────────────────────────────┐
│                        LearnGeoAI 项目架构                        │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  ┌─────────────┐    ┌─────────────┐    ┌─────────────┐         │
│  │  episodes/  │    │ algorithms/ │    │   tasks/    │         │
│  │  (连载内容)  │◄───┤  (算法索引)  │◄───┤  (任务索引)  │         │
│  └──────┬──────┘    └─────────────┘    └─────────────┘         │
│         │                                                       │
│         ▼                                                       │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │                    单期内容结构                           │   │
│  │  ┌───────────┐  ┌───────────┐  ┌───────────┐            │   │
│  │  │ index.md  │  │wechat.md  │  │references │            │   │
│  │  │ (GitHub版)│  │ (公众号版) │  │   .md     │            │   │
│  │  └───────────┘  └───────────┘  └───────────┘            │   │
│  │  ┌───────────┐  ┌───────────┐  ┌───────────┐            │   │
│  │  │ notebook  │  │   data/   │  │  figures/ │            │   │
│  │  │  .ipynb   │  │  (数据)    │  │  (图件)   │            │   │
│  │  └───────────┘  └───────────┘  └───────────┘            │   │
│  └─────────────────────────────────────────────────────────┘   │
│                                                                 │
│  ┌─────────────┐    ┌─────────────┐    ┌─────────────┐         │
│  │ templates/  │    │  scripts/   │    │  glossary   │         │
│  │  (模板文件)  │    │  (脚本)     │    │    .md      │         │
│  └─────────────┘    └─────────────┘    └─────────────┘         │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### 三维索引体系

项目建立了三个维度的索引体系：

1. **按期数索引** (`episodes/`)：按发布顺序组织
2. **按算法索引** (`algorithms/`)：按算法家族组织
3. **按任务索引** (`tasks/`)：按地学任务组织

---

## 目录结构

```
LearnGeoAI/
├── episodes/                    # 每一期文章、代码、图件和资料来源
│   └── 01-linear-regression/    # 第01期：线性回归与温度-高程关系
│       ├── index.md             # GitHub 长文版
│       ├── wechat.md            # 公众号发布版
│       ├── references.md        # 参考资料
│       ├── notebook.ipynb       # 可运行代码示例
│       ├── data/                # 数据目录
│       │   └── README.md        # 数据说明
│       └── figures/             # 图件目录
│           ├── elevation_temperature_scatter.png
│           ├── elevation_temperature_fit.png
│           └── elevation_temperature_residuals.png
│
├── algorithms/                  # 按算法家族组织的索引
│   ├── regression.md            # 回归算法索引
│   ├── classification.md        # 分类算法索引
│   └── spatial-statistics.md    # 空间统计索引
│
├── tasks/                       # 按地学任务组织的索引
│   ├── land-cover-classification.md  # 土地覆盖分类任务
│   ├── landslide-susceptibility.md   # 滑坡易发性任务
│   └── spatial-interpolation.md      # 空间插值任务
│
├── templates/                   # 模板文件
│   ├── episode-index-template.md    # 期目索引模板
│   ├── wechat-template.md           # 公众号文章模板
│   └── references-template.md       # 参考资料模板
│
├── scripts/                     # 脚本目录
│   └── check_repository.sh      # 仓库结构检查脚本
│
├── glossary.md                  # 术语表
├── references.bib               # 共享参考文献
├── README.md                    # 项目说明
└── .gitignore                   # Git 忽略配置
```

---

## 核心模块说明

### episodes 模块

**职责**：存储每一期的完整内容，是项目的核心内容模块。

#### 单期目录结构规范

每期必须包含以下文件：

| 文件 | 用途 | 必需 |
| --- | --- | --- |
| `index.md` | GitHub 长文版，包含完整技术内容 | ✅ |
| `wechat.md` | 公众号发布版，通俗讲解 | ✅ |
| `references.md` | 参考资料、数据来源、软件依赖 | ✅ |
| `notebook.ipynb` | 可运行的 Jupyter Notebook 代码示例 | ✅ |
| `data/README.md` | 数据说明文件 | ✅ |
| `figures/` | 图件存储目录 | ✅ |

#### 单篇结构规范

每期 `index.md` 默认包含以下章节：

1. **本期问题**：地学任务背景与核心问题
2. **算法直觉**：算法核心思想的通俗解释
3. **核心公式**：理解算法所需的公式及符号含义
4. **图解流程**：工作流程图和结果图
5. **Python 示例**：代码运行说明
6. **地学解释**：模型结果的地学意义
7. **适用边界**：算法假设、适用场景和常见误用
8. **延伸阅读**：参考资料指引

#### 当前期目

**第01期：线性回归与温度-高程关系**

- **地学问题**：温度与高程的关系建模
- **算法**：线性回归 (Linear Regression)
- **核心概念**：截距、斜率、残差、决定系数
- **Python 库**：scikit-learn `LinearRegression`

---

### algorithms 模块

**职责**：按算法家族组织索引，方便读者按方法类型查找。

#### 算法分类

| 文件 | 算法家族 | 已规划期目 |
| --- | --- | --- |
| `regression.md` | 回归算法 | 线性回归(01)、Logistic回归(02)、GBDT/XGBoost(12) |
| `classification.md` | 分类算法 | K近邻(07)、决策树(09)、随机森林(10)、SVM(11) |
| `spatial-statistics.md` | 空间统计 | Kriging(04) |

#### 算法索引格式

每个算法索引文件包含：

```markdown
# 算法家族名称

算法简介和适用场景说明。

## 已规划期目

| 期数 | 算法 | 地学任务 | 状态 |
| --- | --- | --- | --- |
| XX | 算法名 | 任务描述 | 状态 |

## 关键问题

- 使用该算法族需要注意的核心问题
```

---

### tasks 模块

**职责**：按地学任务组织索引，方便读者按应用场景查找。

#### 任务分类

| 文件 | 地学任务 | 相关算法 |
| --- | --- | --- |
| `land-cover-classification.md` | 土地覆盖分类 | 随机森林、SVM |
| `landslide-susceptibility.md` | 滑坡易发性 | Logistic回归 |
| `spatial-interpolation.md` | 空间插值 | Kriging |

#### 任务索引格式

每个任务索引文件包含：

```markdown
# 任务名称

任务简介和地学背景。

## 相关期目

| 期数 | 算法 | 用法 |
| --- | --- | --- |
| XX | 算法名 | 具体用法描述 |
```

---

### templates 模块

**职责**：提供标准化模板，保证内容格式一致性。

#### 模板说明

| 模板文件 | 用途 |
| --- | --- |
| `episode-index-template.md` | 期目索引文件模板，定义标准章节结构 |
| `wechat-template.md` | 公众号文章模板，定义通俗讲解结构 |
| `references-template.md` | 参考资料模板，规范数据、文献、软件引用格式 |

---

## 数据流与工作流程

### 内容创作工作流

```
┌─────────────────┐
│  确定地学任务    │
└────────┬────────┘
         ▼
┌─────────────────┐
│  选择对应算法    │
└────────┬────────┘
         ▼
┌─────────────────┐
│  编写 index.md  │
│  (GitHub长文版) │
└────────┬────────┘
         ▼
┌─────────────────┐
│  编写 wechat.md │
│  (公众号通俗版) │
└────────┬────────┘
         ▼
┌─────────────────┐
│  开发 notebook  │
│  (代码示例)     │
└────────┬────────┘
         ▼
┌─────────────────┐
│  整理 references│
│  (参考资料)     │
└────────┬────────┘
         ▼
┌─────────────────┐
│  运行检查脚本    │
│  check_repo.sh  │
└────────┬────────┘
         ▼
┌─────────────────┐
│  发布到 GitHub  │
└─────────────────┘
```

### 读者使用工作流

```
读者需求
    │
    ├── 按期数阅读 ──► episodes/XX-xxx/index.md
    │
    ├── 按算法查找 ──► algorithms/xxx.md ──► 跳转对应期目
    │
    ├── 按任务查找 ──► tasks/xxx.md ──► 跳转对应期目
    │
    └── 运行代码 ──► episodes/XX-xxx/notebook.ipynb
```

---

## 依赖关系

### 软件依赖

项目代码示例主要依赖以下 Python 库：

| 软件包 | 用途 | 安装方式 |
| --- | --- | --- |
| Python 3.x | 运行环境 | 系统安装 |
| pandas | 表格数据处理 | `pip install pandas` |
| scikit-learn | 机器学习算法 | `pip install scikit-learn` |
| matplotlib | 数据可视化 | `pip install matplotlib` |
| jupyter | Notebook 运行环境 | `pip install jupyter` |

### 文档依赖

| 工具 | 用途 |
| --- | --- |
| Markdown | 文档编写 |
| BibTeX | 参考文献管理 |
| ripgrep (rg) | 仓库检查脚本依赖 |

### 模块间依赖关系

```
┌─────────────────────────────────────────────────────────┐
│                      README.md                          │
│                    (项目入口说明)                        │
└────────────────────────┬────────────────────────────────┘
                         │
         ┌───────────────┼───────────────┐
         ▼               ▼               ▼
┌─────────────┐  ┌─────────────┐  ┌─────────────┐
│  episodes/  │  │ algorithms/ │  │   tasks/    │
│             │◄─┤             ├─►│             │
└──────┬──────┘  └─────────────┘  └─────────────┘
       │
       │ 引用
       ▼
┌─────────────┐  ┌─────────────┐
│ glossary.md │  │references   │
│  (术语表)   │  │   .bib      │
└─────────────┘  └─────────────┘
       ▲
       │ 使用
┌──────┴──────┐
│  templates/ │
│   (模板)    │
└─────────────┘
```

---

## 项目运行方式

### 环境准备

```bash
# 克隆仓库
git clone https://github.com/ali820/LearnGeoAI.git
cd LearnGeoAI

# 安装 Python 依赖
pip install pandas scikit-learn matplotlib jupyter
```

### 运行代码示例

```bash
# 进入对应期目目录
cd episodes/01-linear-regression

# 启动 Jupyter Notebook
jupyter notebook notebook.ipynb
```

### 仓库结构检查

```bash
# 运行检查脚本
bash scripts/check_repository.sh
```

检查脚本功能：
1. 验证必需文件是否存在
2. 验证 notebook.ipynb 是否为有效 JSON
3. 检查是否有未处理的 `[NEEDS SOURCE]` 标记

### 阅读文档

- **项目入口**：阅读 [README.md](README.md)
- **按期阅读**：浏览 `episodes/` 目录
- **按算法查找**：浏览 `algorithms/` 目录
- **按任务查找**：浏览 `tasks/` 目录
- **术语查询**：查阅 [glossary.md](glossary.md)

---

## 开发规范

### 证据纪律

本项目严格遵守以下原则：

1. **不编造引用**：所有引用必须有明确来源
2. **不编造数据集**：使用真实数据需记录来源和许可证
3. **不编造阈值**：数值结果需有依据
4. **不编造性能比较**：比较结果需可验证

需要来源但尚未补充的说法标记为 `[NEEDS SOURCE]`，并在正式发布前处理。

### 文件命名规范

| 类型 | 命名规则 | 示例 |
| --- | --- | --- |
| 期目目录 | `XX-算法名` | `01-linear-regression` |
| 图件文件 | `描述性名称.png` | `elevation_temperature_scatter.png` |
| 数据说明 | `README.md` | `data/README.md` |

### 内容格式规范

#### index.md 章节顺序

1. 本期问题
2. 算法直觉
3. 核心公式
4. 图解流程
5. Python 示例
6. 地学解释
7. 适用边界
8. 延伸阅读

#### references.md 表格格式

```markdown
## 本期使用的数据

| 名称 | 来源 | 许可证或使用说明 | 用途 |
| --- | --- | --- | --- |

## 本期引用的文献

| 文献 | 用途 | 备注 |
| --- | --- | --- |

## 本期使用的软件

| 软件包 | 用途 | 备注 |
| --- | --- | --- |
```

---

## 扩展指南

### 新增期目流程

1. **创建期目目录**
   ```bash
   mkdir -p episodes/XX-algorithm-name/{data,figures}
   touch episodes/XX-algorithm-name/{index.md,wechat.md,references.md,notebook.ipynb}
   touch episodes/XX-algorithm-name/data/README.md
   touch episodes/XX-algorithm-name/figures/.gitkeep
   ```

2. **使用模板编写内容**
   - 复制 `templates/episode-index-template.md` 到 `index.md`
   - 复制 `templates/wechat-template.md` 到 `wechat.md`
   - 复制 `templates/references-template.md` 到 `references.md`

3. **更新索引文件**
   - 在对应 `algorithms/` 文件中添加期目信息
   - 在对应 `tasks/` 文件中添加期目信息

4. **运行检查脚本**
   ```bash
   bash scripts/check_repository.sh
   ```

### 新增算法家族

1. 在 `algorithms/` 目录创建新的 `.md` 文件
2. 按照标准格式编写：
   - 算法简介
   - 已规划期目表格
   - 关键问题列表

### 新增地学任务

1. 在 `tasks/` 目录创建新的 `.md` 文件
2. 按照标准格式编写：
   - 任务简介
   - 相关期目表格

---

## 第一季计划概览

| 期数 | 算法 | 地学任务 | 状态 |
| --- | --- | --- | --- |
| 01 | 线性回归 | 温度与高程关系 | ✅ 已完成 |
| 02 | Logistic 回归 | 滑坡易发性或二分类灾害制图 | 计划中 |
| 03 | 主成分分析 | 多源环境变量降维 | 计划中 |
| 04 | Kriging | 空间插值与空间自相关 | 计划中 |
| 05 | 时间序列分解或 ARIMA | 气候趋势与季节性分析 | 计划中 |
| 06 | 贝叶斯方法 | 地学推断中的不确定性表达 | 计划中 |
| 07 | K 近邻 | 相似区域检索或简单空间分类 | 计划中 |
| 08 | K-means 聚类 | 地表类型或环境区划的无监督分组 | 计划中 |
| 09 | 决策树 | 可解释的规则分类 | 计划中 |
| 10 | 随机森林 | 土地覆盖分类或环境变量重要性分析 | 计划中 |
| 11 | 支持向量机 | 小样本遥感分类 | 计划中 |
| 12 | GBDT/XGBoost | 生态、环境或灾害风险建模 | 计划中 |

---

## 附录

### 术语表

| 术语 | 定义 |
| --- | --- |
| GeoAI | 面向地理空间数据、地学过程和空间决策问题的人工智能方法集合 |
| 空间自相关 | 空间位置相近的观测值往往更相似的现象 |
| 可复现示例 | 读者可以在本仓库中运行并得到一致结构输出的最小代码示例 |

### 关键链接

- **项目仓库**：https://github.com/ali820/LearnGeoAI
- **第一期入口**：[episodes/01-linear-regression](episodes/01-linear-regression/)
- **模板入口**：[templates](templates/)

---

*本文档由 Code Wiki 自动生成，最后更新：2026-04-30*

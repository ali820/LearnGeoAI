# GeoAI Series Foundation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the first usable GitHub foundation for the GeoAI WeChat series: repository landing page, reusable episode templates, first-episode folder, and lightweight validation.

**Architecture:** Treat each episode as a self-contained content unit under `episodes/`, while maintaining cross-cutting indexes under `algorithms/` and `tasks/`. Keep templates under `templates/` so each future episode can be created consistently from the same writing and evidence rules. Use simple Markdown-first validation because this is currently a content/code-learning repository, not an application.

**Tech Stack:** Markdown, Jupyter Notebook JSON, BibTeX, POSIX shell commands, Git.

---

## File Structure

- Modify `README.md`: project landing page, series map, first-season table, repository guide.
- Create `templates/episode-index-template.md`: GitHub long-form article template.
- Create `templates/wechat-template.md`: WeChat article template.
- Create `templates/references-template.md`: per-episode source tracking template.
- Create `episodes/01-linear-regression/index.md`: first episode source draft scaffold.
- Create `episodes/01-linear-regression/wechat.md`: first episode WeChat draft scaffold.
- Create `episodes/01-linear-regression/references.md`: first episode source log.
- Create `episodes/01-linear-regression/data/README.md`: data policy and expected dataset notes.
- Create `episodes/01-linear-regression/notebook.ipynb`: minimal runnable notebook skeleton.
- Create `episodes/01-linear-regression/figures/.gitkeep`: preserve figure directory.
- Create `algorithms/regression.md`: regression index.
- Create `algorithms/classification.md`: classification index.
- Create `algorithms/spatial-statistics.md`: spatial statistics index.
- Create `tasks/landslide-susceptibility.md`: task index.
- Create `tasks/land-cover-classification.md`: task index.
- Create `tasks/spatial-interpolation.md`: task index.
- Create `glossary.md`: shared terms.
- Create `references.bib`: shared bibliography file.
- Create `scripts/check_repository.sh`: lightweight repository checks for required files and unresolved source markers.

## Task 1: Repository Landing Page and Index Directories

**Files:**
- Modify: `README.md`
- Create: `algorithms/regression.md`
- Create: `algorithms/classification.md`
- Create: `algorithms/spatial-statistics.md`
- Create: `tasks/landslide-susceptibility.md`
- Create: `tasks/land-cover-classification.md`
- Create: `tasks/spatial-interpolation.md`
- Create: `glossary.md`
- Create: `references.bib`

- [ ] **Step 1: Replace `README.md` with the project landing page**

Use this complete content:

```markdown
# LearnGeoAI

LearnGeoAI 是一个面向地学、遥感、GIS、环境、生态、城市和灾害研究者的 GeoAI 算法连载项目。项目采用“微信公众号连载 + GitHub 知识库”的双轨方式：公众号负责通俗讲解和图文传播，GitHub 负责保存完整文章、代码、图件、数据说明和参考资料。

## 连载主线

连载按算法发展脉络推进，每篇文章用一个具体地学任务讲清楚算法。

| 阶段 | 内容 |
| --- | --- |
| 统计学方法 | 回归、降维、空间统计、时间序列、贝叶斯方法 |
| 传统机器学习 | KNN、聚类、决策树、随机森林、SVM、GBDT/XGBoost |
| 深度学习 | CNN、RNN、Transformer、GNN 及其地学应用 |
| 基础模型 | 自监督学习、遥感基础模型、地学基础模型 |
| 大模型 | GeoLLM、视觉语言模型、RAG、Agent、多模态地学智能 |

## 第一季计划

| 期数 | 算法 | 地学任务 |
| --- | --- | --- |
| 01 | 线性回归 | 温度与高程关系 |
| 02 | Logistic 回归 | 滑坡易发性或二分类灾害制图 |
| 03 | 主成分分析 | 多源环境变量降维 |
| 04 | Kriging | 空间插值与空间自相关 |
| 05 | 时间序列分解或 ARIMA | 气候趋势与季节性分析 |
| 06 | 贝叶斯方法 | 地学推断中的不确定性表达 |
| 07 | K 近邻 | 相似区域检索或简单空间分类 |
| 08 | K-means 聚类 | 地表类型或环境区划的无监督分组 |
| 09 | 决策树 | 可解释的规则分类 |
| 10 | 随机森林 | 土地覆盖分类或环境变量重要性分析 |
| 11 | 支持向量机 | 小样本遥感分类 |
| 12 | GBDT/XGBoost | 生态、环境或灾害风险建模 |

## 仓库结构

```text
episodes/      每一期文章、代码、图件和资料来源
templates/     公众号版、GitHub 版和参考资料模板
algorithms/    按算法家族组织的索引
tasks/         按地学任务组织的索引
glossary.md    术语表
references.bib 共享参考文献
scripts/       仓库检查脚本
```

## 单篇结构

每一期默认包含：

1. 地学问题
2. 算法直觉
3. 核心公式
4. 图解流程
5. Python 示例
6. 地学解释
7. 适用边界
8. 延伸阅读

## 证据纪律

本项目不编造引用、数据集、阈值、数值结果或性能比较。需要来源但尚未补充的说法会标记为 `[NEEDS SOURCE]`，并在正式发布前处理。

## 当前进度

- 设计文档：[GeoAI 算法连载设计](docs/superpowers/specs/2026-04-24-geoai-series-design.md)
- 第一期开篇方向：线性回归与温度-高程关系
```

- [ ] **Step 2: Create `algorithms/regression.md`**

Use this complete content:

```markdown
# 回归算法

回归算法用于刻画连续变量之间的关系，是许多地学建模任务的基础。

## 已规划期目

| 期数 | 算法 | 地学任务 | 状态 |
| --- | --- | --- | --- |
| 01 | 线性回归 | 温度与高程关系 | 草稿准备中 |
| 02 | Logistic 回归 | 滑坡易发性或二分类灾害制图 | 计划中 |
| 12 | GBDT/XGBoost | 生态、环境或灾害风险建模 | 计划中 |

## 关键问题

- 变量之间是否近似满足线性关系？
- 模型输出是连续值、概率还是类别？
- 空间自相关、样本偏差和尺度效应是否会影响解释？
```

- [ ] **Step 3: Create `algorithms/classification.md`**

Use this complete content:

```markdown
# 分类算法

分类算法用于把地学对象、像元、区域或事件划分为离散类别。

## 已规划期目

| 期数 | 算法 | 地学任务 | 状态 |
| --- | --- | --- | --- |
| 07 | K 近邻 | 相似区域检索或简单空间分类 | 计划中 |
| 09 | 决策树 | 可解释的规则分类 | 计划中 |
| 10 | 随机森林 | 土地覆盖分类或环境变量重要性分析 | 计划中 |
| 11 | 支持向量机 | 小样本遥感分类 | 计划中 |

## 关键问题

- 类别定义是否清晰？
- 训练样本是否代表真实空间分布？
- 精度指标是否区分总体精度、类别精度和空间泛化能力？
```

- [ ] **Step 4: Create `algorithms/spatial-statistics.md`**

Use this complete content:

```markdown
# 空间统计

空间统计关注空间相关性、空间异质性和空间插值，是 GeoAI 与传统地学分析之间的重要桥梁。

## 已规划期目

| 期数 | 方法 | 地学任务 | 状态 |
| --- | --- | --- | --- |
| 04 | Kriging | 空间插值与空间自相关 | 计划中 |

## 关键问题

- 变量是否存在空间自相关？
- 采样点分布是否均衡？
- 插值结果的不确定性如何表达？
```

- [ ] **Step 5: Create task index files**

Create `tasks/landslide-susceptibility.md`:

```markdown
# 滑坡易发性

滑坡易发性建模通常用于估计区域内发生滑坡的相对可能性。该任务适合讲解二分类、概率输出、样本偏差和空间验证。

## 相关期目

| 期数 | 算法 | 用法 |
| --- | --- | --- |
| 02 | Logistic 回归 | 二分类概率建模 |
```

Create `tasks/land-cover-classification.md`:

```markdown
# 土地覆盖分类

土地覆盖分类是遥感和 GeoAI 中最常见的任务之一，适合连接传统机器学习、深度学习和基础模型。

## 相关期目

| 期数 | 算法 | 用法 |
| --- | --- | --- |
| 10 | 随机森林 | 多类别土地覆盖分类 |
| 11 | 支持向量机 | 小样本遥感分类 |
```

Create `tasks/spatial-interpolation.md`:

```markdown
# 空间插值

空间插值用于从离散观测点估计连续空间表面，是理解空间自相关、采样设计和不确定性的基础任务。

## 相关期目

| 期数 | 方法 | 用法 |
| --- | --- | --- |
| 04 | Kriging | 空间插值与不确定性表达 |
```

- [ ] **Step 6: Create shared glossary and bibliography**

Create `glossary.md`:

```markdown
# 术语表

## GeoAI

GeoAI 指面向地理空间数据、地学过程和空间决策问题的人工智能方法集合。

## 空间自相关

空间自相关指空间位置相近的观测值往往更相似的现象。

## 可复现示例

可复现示例指读者可以在本仓库中运行并得到一致结构输出的最小代码示例。
```

Create `references.bib`:

```bibtex
% Shared bibliography for LearnGeoAI.
% Episode-specific sources are tracked in each episode's references.md.
```

- [ ] **Step 7: Verify Task 1**

Run:

```bash
test -f README.md
test -f algorithms/regression.md
test -f algorithms/classification.md
test -f algorithms/spatial-statistics.md
test -f tasks/landslide-susceptibility.md
test -f tasks/land-cover-classification.md
test -f tasks/spatial-interpolation.md
test -f glossary.md
test -f references.bib
```

Expected: command exits with status `0`.

- [ ] **Step 8: Commit Task 1**

Run:

```bash
git add README.md algorithms tasks glossary.md references.bib
git commit -m "Add GeoAI repository indexes"
```

Expected: commit succeeds.

## Task 2: Reusable Writing Templates

**Files:**
- Create: `templates/episode-index-template.md`
- Create: `templates/wechat-template.md`
- Create: `templates/references-template.md`

- [ ] **Step 1: Create `templates/episode-index-template.md`**

Use this complete content:

```markdown
# 第 N 期：算法名称与地学任务

## 本期问题

用 2-3 段说明地学任务、数据类型和为什么这个算法适合讲这个问题。

## 算法直觉

用通俗语言解释算法核心思想。先讲“它在解决什么问题”，再讲“它如何解决”。

## 核心公式

只保留理解算法所需的公式，并解释每个符号的地学含义。

## 图解流程

说明本期至少需要的图件：

- 地学任务图。
- 算法直觉图。
- 数据到模型输出的流程图。
- 代码示例生成的结果图。

## Python 示例

说明 notebook 的输入、输出和运行方式。

```bash
jupyter notebook notebook.ipynb
```

## 地学解释

解释模型结果如何服务于地学问题，区分观察、解释、机制和启示。

## 适用边界

说明算法假设、适用场景、常见误用和不确定性。

## 延伸阅读

本节与 `references.md` 保持一致。需要来源但尚未补充的说法标记为 `[NEEDS SOURCE]`。
```

- [ ] **Step 2: Create `templates/wechat-template.md`**

Use this complete content:

```markdown
# 公众号标题

## 开头

用一个具体地学问题开场，避免先讲算法定义。

## 一个直觉图

用一张图或一个类比说明算法在做什么。

## 算法怎么想问题

用少量公式和清晰语言解释算法逻辑。

## 地学案例

说明输入数据、模型输出和领域解释。

## 代码在哪里

简短说明 GitHub 中包含完整代码、图件和参考资料。

## 这个方法什么时候不该用

说明适用边界、误用风险和不确定性。

## 结尾

用 3-5 句话总结本期收获，并自然引出下一期。
```

- [ ] **Step 3: Create `templates/references-template.md`**

Use this complete content:

```markdown
# 参考资料

## 本期使用的数据

| 名称 | 来源 | 许可证或使用说明 | 用途 |
| --- | --- | --- | --- |

## 本期引用的文献

| 文献 | 用途 | 备注 |
| --- | --- | --- |

## 本期使用的软件

| 软件包 | 用途 | 备注 |
| --- | --- | --- |

## 待补充来源

发布前清空本节，或把仍未补充来源的说法保留为 `[NEEDS SOURCE]`。
```

- [ ] **Step 4: Verify Task 2**

Run:

```bash
test -f templates/episode-index-template.md
test -f templates/wechat-template.md
test -f templates/references-template.md
rg -n "第 N 期|公众号标题|参考资料" templates
```

Expected: all three templates exist, and `rg` prints matching lines from the templates.

- [ ] **Step 5: Commit Task 2**

Run:

```bash
git add templates
git commit -m "Add GeoAI writing templates"
```

Expected: commit succeeds.

## Task 3: First Episode Scaffold

**Files:**
- Create: `episodes/01-linear-regression/index.md`
- Create: `episodes/01-linear-regression/wechat.md`
- Create: `episodes/01-linear-regression/references.md`
- Create: `episodes/01-linear-regression/data/README.md`
- Create: `episodes/01-linear-regression/notebook.ipynb`
- Create: `episodes/01-linear-regression/figures/.gitkeep`

- [ ] **Step 1: Create first episode directories**

Run:

```bash
mkdir -p episodes/01-linear-regression/data episodes/01-linear-regression/figures
```

Expected: command exits with status `0`.

- [ ] **Step 2: Create `episodes/01-linear-regression/index.md`**

Use this complete content:

```markdown
# 第 01 期：线性回归与温度-高程关系

## 本期问题

许多地学变量会随空间位置和环境梯度发生变化。温度与高程之间的关系是理解回归思想的经典例子：在其他条件相近时，高程升高通常伴随气温降低。这一期用这个问题解释线性回归如何描述连续变量之间的关系。

## 算法直觉

线性回归试图用一条直线概括两个变量之间的平均关系。对本期例子来说，横轴可以是高程，纵轴可以是温度；模型要回答的问题是：当高程变化时，温度平均会如何变化？

## 核心公式

一元线性回归的基本形式为：

```text
y = beta_0 + beta_1 x + epsilon
```

其中，`y` 表示温度，`x` 表示高程，`beta_0` 表示截距，`beta_1` 表示高程变化对应的平均温度变化，`epsilon` 表示模型未解释的误差。

## 图解流程

本期需要三类图：

- 高程与温度散点图。
- 拟合直线图。
- 残差图。

## Python 示例

Notebook 将使用一个小型示例数据表，演示如何拟合线性回归、绘制拟合结果并检查残差。

```bash
jupyter notebook notebook.ipynb
```

## 地学解释

回归斜率可以帮助描述温度随高程变化的平均趋势，但它不能自动证明高程是温度变化的唯一原因。真实地表温度还可能受纬度、坡向、下垫面、季节和观测时间影响。

## 适用边界

线性回归适合解释近似线性的平均关系。如果关系明显非线性、残差存在强空间结构，或样本覆盖范围很窄，模型解释需要更谨慎。

## 延伸阅读

本期参考资料记录在 `references.md`。
```

- [ ] **Step 3: Create `episodes/01-linear-regression/wechat.md`**

Use this complete content:

```markdown
# 为什么山越高通常越冷？用线性回归读懂地学 AI 的第一步

## 开头

如果我们沿着一座山向上走，常常会感觉气温逐渐下降。这个现象很适合用来理解地学人工智能中的第一个基础方法：线性回归。

线性回归不神秘。它做的事情，是用一条尽可能合适的直线，概括两个变量之间的平均关系。

## 一个直觉图

想象一张散点图：每个点代表一个观测地点，横轴是高程，纵轴是温度。如果这些点大致从左上往右下分布，我们就可以用一条向下倾斜的直线描述这种趋势。

## 算法怎么想问题

线性回归把问题写成：

```text
温度 = 截距 + 斜率 × 高程 + 误差
```

其中，斜率告诉我们：高程每变化一个单位，温度平均如何变化。

## 地学案例

在温度-高程关系中，模型输出的不只是一个预测值，更重要的是一个可解释的趋势。这个趋势可以帮助我们理解环境梯度，也可以作为更复杂地学模型的基础。

## 代码在哪里

完整代码、图件和参考资料会沉淀在 GitHub 的 `episodes/01-linear-regression/` 文件夹中。

## 这个方法什么时候不该用

如果温度与高程关系明显不是直线，或者样本只来自很小范围，线性回归就可能过度简化问题。它也不能自动排除纬度、坡向、地表覆盖和季节等因素的影响。

## 结尾

线性回归是很多地学 AI 方法的起点。它让我们从“变量之间是否有关”走向“这种关系如何表达”。下一期可以继续讨论 Logistic 回归，看看当目标从连续温度变成“是否发生滑坡”时，模型思路会发生什么变化。
```

- [ ] **Step 4: Create `episodes/01-linear-regression/references.md`**

Use this complete content:

```markdown
# 参考资料

## 本期使用的数据

| 名称 | 来源 | 许可证或使用说明 | 用途 |
| --- | --- | --- | --- |
| 示例温度-高程数据 | 本仓库 notebook 内构造的小型教学数据 | 仅用于演示 | 线性回归拟合与作图 |

## 本期引用的文献

| 文献 | 用途 | 备注 |
| --- | --- | --- |

## 本期使用的软件

| 软件包 | 用途 | 备注 |
| --- | --- | --- |
| Python | 运行示例代码 | 版本在 notebook 中记录 |
| pandas | 表格数据处理 | 计划使用 |
| scikit-learn | 线性回归拟合 | 计划使用 |
| matplotlib | 作图 | 计划使用 |

## 待补充来源

- 温度随高程变化这一地学背景需要补充教材或气候学资料来源。
- 线性回归基础定义需要补充统计学教材或 scikit-learn 文档来源。
```

- [ ] **Step 5: Create `episodes/01-linear-regression/data/README.md`**

Use this complete content:

```markdown
# 数据说明

第一期先使用 notebook 内构造的小型教学数据，避免在仓库中加入来源不明或许可证不清的数据文件。

后续如果替换为真实开放数据，需要在本文件记录：

- 数据名称。
- 数据来源链接。
- 许可证或使用条款。
- 下载日期。
- 字段说明。
- 预处理步骤。
```

- [ ] **Step 6: Create notebook skeleton**

Create `episodes/01-linear-regression/notebook.ipynb` with this complete JSON:

```json
{
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {},
      "source": [
        "# 第 01 期：线性回归与温度-高程关系\n",
        "\n",
        "这个 notebook 用小型教学数据演示线性回归的基本流程。"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {},
      "outputs": [],
      "source": [
        "import pandas as pd\n",
        "\n",
        "data = pd.DataFrame({\n",
        "    \"elevation_m\": [100, 300, 500, 700, 900, 1100],\n",
        "    \"temperature_c\": [24.5, 23.2, 21.8, 20.6, 19.1, 17.9],\n",
        "})\n",
        "data"
      ]
    }
  ],
  "metadata": {
    "kernelspec": {
      "display_name": "Python 3",
      "language": "python",
      "name": "python3"
    },
    "language_info": {
      "name": "python",
      "pygments_lexer": "ipython3"
    }
  },
  "nbformat": 4,
  "nbformat_minor": 5
}
```

- [ ] **Step 7: Preserve figure directory**

Run:

```bash
touch episodes/01-linear-regression/figures/.gitkeep
```

Expected: command exits with status `0`.

- [ ] **Step 8: Verify Task 3**

Run:

```bash
test -f episodes/01-linear-regression/index.md
test -f episodes/01-linear-regression/wechat.md
test -f episodes/01-linear-regression/references.md
test -f episodes/01-linear-regression/data/README.md
test -f episodes/01-linear-regression/notebook.ipynb
test -f episodes/01-linear-regression/figures/.gitkeep
python -m json.tool episodes/01-linear-regression/notebook.ipynb >/dev/null
```

Expected: command exits with status `0`.

- [ ] **Step 9: Commit Task 3**

Run:

```bash
git add episodes/01-linear-regression
git commit -m "Add first GeoAI episode scaffold"
```

Expected: commit succeeds.

## Task 4: Lightweight Repository Validation

**Files:**
- Create: `scripts/check_repository.sh`

- [ ] **Step 1: Create `scripts/check_repository.sh`**

Use this complete content:

```bash
#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "README.md"
  "templates/episode-index-template.md"
  "templates/wechat-template.md"
  "templates/references-template.md"
  "episodes/01-linear-regression/index.md"
  "episodes/01-linear-regression/wechat.md"
  "episodes/01-linear-regression/references.md"
  "episodes/01-linear-regression/data/README.md"
  "episodes/01-linear-regression/notebook.ipynb"
  "algorithms/regression.md"
  "algorithms/classification.md"
  "algorithms/spatial-statistics.md"
  "tasks/landslide-susceptibility.md"
  "tasks/land-cover-classification.md"
  "tasks/spatial-interpolation.md"
  "glossary.md"
  "references.bib"
)

for path in "${required_files[@]}"; do
  if [[ ! -f "$path" ]]; then
    echo "Missing required file: $path" >&2
    exit 1
  fi
done

python -m json.tool episodes/01-linear-regression/notebook.ipynb >/dev/null

echo "Repository structure check passed."

if rg -n "\[NEEDS SOURCE\]" episodes README.md algorithms tasks glossary.md >/tmp/learngeoai-needs-source.txt; then
  echo "Source markers found. Review before publication:"
  cat /tmp/learngeoai-needs-source.txt
fi
```

- [ ] **Step 2: Make the script executable**

Run:

```bash
chmod +x scripts/check_repository.sh
```

Expected: command exits with status `0`.

- [ ] **Step 3: Run validation**

Run:

```bash
./scripts/check_repository.sh
```

Expected: command prints `Repository structure check passed.` If source markers are present, the script also prints their locations for editorial review.

- [ ] **Step 4: Commit Task 4**

Run:

```bash
git add scripts/check_repository.sh
git commit -m "Add repository validation script"
```

Expected: commit succeeds.

## Self-Review

- Spec coverage: the plan implements the repository structure, episode template workflow, first episode start, GitHub indexes, evidence markers, and a minimal validation script.
- Scope control: the plan does not attempt to write the full first article, generate final figures, or complete all 12 episodes.
- Verification: each task has concrete file checks or script execution steps.
- Commit rhythm: each task ends with a focused commit.

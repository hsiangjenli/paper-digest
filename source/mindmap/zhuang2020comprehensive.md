# A Comprehensive Survey on Transfer Learning

## Related Work

### Semi-Supervised Learning

### Multi-View Learning
1. Subspace Learning
2. Multi-Kernel Learning
3. Co-Training

### Multi-Task Learning

## Categorization of Transfer Learning

### Equation 

#### X - Feature Space

#### Y - Label Space

1. Tranductive
1. Inductive
1. Unsupervised

### Solution

> **Homogeneous transfer learning**  
> The main objective is to reduce the distribution difference between the **source-domain** and the **target-domain** instances. 

#### Instance-Based (Data Perspective)

> Reweight the source-domain instances  
> Simultaneously train with source (reweighted) and target data

- Marginal Distribution - $\mathit{P}^{S}({X}) \neq \mathit{P}^{T}({X})$
- Conditional Distribution - $\mathit{P}^{S}({Y} | {X}) = \mathit{P}^{T}({Y}|{X})$

1. Instance Weighting
1. Domain Weighting
> Based on the smoothness assumption

#### Feature-Based (Data Perspective)
1. Distribution Difference Metric
2. Feature Augmentation
3. Feature Mapping
4. Feature Clustering
5. Feature Selection
6. Feature Encoding
7. Feature Alignment

#### Parameter-Based
> Transfer the knowledge at the model/parameter level

#### Relational-Based
> 
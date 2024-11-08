# WIP - Outline of {title-ref}`xu2021privacy`

> - Year: {cite:year}`xu2021privacy`
> - Author: {cite:authors}`xu2021privacy`

## Privacy Preserving {P}hase in PPML

> How privacy techniques can be applied at different stages of the ML pipeline
> 1. Data Preparation
> 1. Model Training/Evaluation
> 1. Model Deployment
> 1. Model Serving

### Model Generation
> - Data Preparation
> - Model Training/Evaluation
<!-- #### Before Training - Data - Data Prepraration 
#### During Training - Computation - Model Training  -->

### Model Serving
> - Model Deployment
> - Model Serving
<!-- 1. private aggregation of teacher ensembles (PATE)
2. model transformation
3. model compression -->

### Full Pipeline

---

## Privacy {G}uarantees in PPML

### Object-Oriented Privacy Guarantee
#### Data Oriented
> Attackers can not infer private information from input data  
> e.g. Revealing the column used in training data, which may let attackers link the data to specific individuals

#### Model Oriented
> Attackers can not infer private information from model, even after multiple queries

### Pipeline-Orientied Privacy Guarantee

> In entire ML pipeline, you may use local machine or cloud service, involving multiple participants. Therefore, to ensure privacy, you need to understand the flow of data and the responsibility of each participant in the pipeline. Therefore, you need to:
> 1. Define data processing boundaries
> 1. Set trust level for each role in the pipeline (`🟩 Trusted`, `🟢 Honest`, `🔴 Curious`, `🟥 Untrusted`)

#### Model Generation Phase
> Guarantee on model generation phase, there are three roles:
> 1. Data Producer
> 1. Local CF
> 1. Third-party CF

##### Vanilla Local Privacy Guarantee
> - 🟢 third-party CF

##### Primary Local Privacy Guarantee
> - 🔴 third-party CF

##### Enhanced Local Privacy Guarantee
> - 🟥 third-party CF

#### Model Serving Phase
> Guarantee on model serving phase, there are four roles:
> 1. Data Producer
> 1. Local CF
> 1. Third-party CF
> 1. Model Consumer

##### Global Model Privacy Guarantee


#### Full Privacy Guarantee

---

## Technical {U}tility in PPML

### Data Publish Approach

### Data Processing Approach

### Architectureal Appraoch

### Hybrid Approach 

---

## Challenge and Potential Directions


<!-- References

```{bibliography}
:filter: docname in docnames
``` -->

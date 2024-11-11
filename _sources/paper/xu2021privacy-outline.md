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

##### Typical types of privacy leakage
1. Disclosure of Membership
1. Class Representative
1. Property

> Guarantee on model serving phase, there are four roles:
> 1. Data Producer
> 1. Local CF
> 1. Third-party CF
> 1. Model Consumer

##### Global Model Privacy Guarantee
> - 🟩 Local CF
> - 🟩 Third-Party CF
> - 🔴 Model Consumer

#### Full Privacy Guarantee

---

## Technical {U}tility in PPML
> 1. How to release/publish data without revealing sensitive information
> 1. How the data used in the model training 
> 1. The architecture of ML system prevents the disclosure of sensitive information

> The impact of using PPML can be classified into n categories:
> 1. Model Utility
> 1. Computation Utility
> 1. Communication Utility
> 1. Scalability Utility
> 1. Scenario Utility
> 1. Privacy Utility
<!-- > 1. Computation Utility
> 1. Communication Utility
> 1. Model Utility
> 1. Scalability Utility -->

### Data Publish Approach

#### Elimitation-based Approach
> - Totally eliminate the identifier from the data
> - Partially conceal quasi-identifiers

1. $k$-anonymity
1. $l$-diversity
1. $t$-closeness

#### Perturbation-based Approach
1. Differential Privacy
1. Sketching

#### Confusion-based Approach (Cryptography)
1. Symmetric encryption (e.g. AES) + Garbled circuits / Oblivious transfer
1. Homomorphic encryption
1. Functional encryption

### Data Processing Approach

#### Ordinary Computation
> If using traditional anonymization techniques or perturbation-based techniques, the identifiers are removed from the data, then can use ordinary computation

##### Elimination-based Approach
##### Perturbation-based Approach

#### Secure Computation

> Adversary setting is semi-honest or malicious

##### Additive Mask based Approach
> - Private data are masked with randomize values
> - A light-weight approach of secure computation

1. Pairwise Additive Masking Based Secure Computation Approach
   - $t$-of-$n$ secret sharing
   - Multi-Secret Sharing
1. Double Masking Pairwise Based Protocol
   - Prevents the failure happened in Pairwise Additive Masking
1. Anonymous Communication
   - DC-nets (Dining Cryptographers Networks)
   - mix-nets
   

##### Garbled Circuit based Approach

##### Advanced Cryptography based Approach
###### Homomorphic Encryption
###### Functional Encryption

##### Mixed Protocol Approach
> Combine the above approaches

1. TASTY
1. ABY
1. ABY$^3$
1. CrypTen
1. Falcon

##### Trusted Execution Environment Approach
1. Code Authentication
1. Runtime State Integrity
1. Confidentiality

### Architectureal Appraoch

#### Delegation-based ML Architecture
> Provide computation-limited parties the capability to create and use ML models
1. CryptoML
1. SecureML

#### Distributed Selective SGD Architecture

#### Federated Learning Architecture

#### Knowledge Transfer Architecture

1. Knowledge Distillation
1. Model Compression
1. Transfer Learning

### Hybrid Approach 

<!-- ---

## Challenge and Potential Directions -->


<!-- References

```{bibliography}
:filter: docname in docnames
``` -->

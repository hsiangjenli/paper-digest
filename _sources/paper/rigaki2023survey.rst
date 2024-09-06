.. meta::
   :date: 2024-09-01

:title-ref:`rigaki2023survey`
=============================

* Publish Year : :cite:year:`rigaki2023survey`  
* Authors : :cite:authors:`rigaki2023survey`  

Abstract
--------
- Analysis of more than 45 papers related to privacy attacks against machine learning
- Attack taxonomy (focus on privacy and confidentiality attacks)
- Exploration of the causes of privacy leaks
- The most common defenses methods, open problems and future directions
- Implementation of the attacks

Introduction
------------

How models leaks information

#. The way of constructing models

   - For example, adversarial robustness (make the model can defenses against adversarial examples) can leak information about the training data
   - Because the modelmay overfitting to the training data, which means the model already memorized the training data

#. Poor generalization and memorization of sensitive data samples

three types of attacks on machine learning systems:

#. attacks against integrity - 完整性攻擊
   - 攻擊 input data，讓模型做出錯誤決策

#. attacks against a system's availability
   - Maximize the misclassification error

#. attacks against privacy and confidentiality !!!
   - try to infer information about user data and models
   - 試圖推理出 data 的資訊或是模型的敏感訊息

Type of Machine learning architecture  

- Centralized Learning
- Distributed Learning
   #. collaborative or federated learning (FL)
   #. fully decentralized or peer-to-peer (P2P) learning
   #. split learning

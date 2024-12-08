WIP - :title-ref:`xu2021privacy`
================================

.. raw:: html

   <iframe src="_static/markmap/xu2021privacy.html" width="100%" height="500px"></iframe>

* Publish Year : :cite:year:`xu2021privacy`  
* Authors : :cite:authors:`xu2021privacy`  


Before starting
---------------

Before starting to read the paper, the basic concepts you need to know are as follows:

* Entire ML pipeline process 
* The participants in the ML pipeline


Key Terms
^^^^^^^^^
#. Privacy-preserving machine learning (PPML)
#. Complete Model :math:`\rightarrow` Train on **single** machine
#. Global Model :math:`\rightarrow` Train on **multiple** machines
#. Data Producer (DP)
#. Model Consumer (MC)
#. Computational Facility (CF)
#. Confidential-level privacy
#. Homomorphic encryption (HE)
#. Functional encryption (FE)
#. Differential privacy
#. Multi-party computation (MPC)
#. Secure multi-party computation (SMPC)
#. Garbled circuit
#. Oblivious transfer

Contributions :cite:`xu2021privacy`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#. Existing privacy preserving approaches
#. Proposed an evaluation framework for PPML, which decomposes privacy-preserving features into distinct Phase, Guarantee, and Utility aspects (PGU).

* Phase : Represents the use of privacy-preserving techniques at different stages in the ML pipeline
* Guarantee : In specific scenarios, privacy-preserving techniques provide certain levels of privacy protection
* Utility : The impact of privacy-preserving techniques on the model’s performance


    .. **PPML Solutions**

    .. #. Data Publishing Approach
    .. #. Data Processing Approach
    .. #. Architecture based Approach
    .. #. Hybrid Approach



    .. **The impact of using PPML**

    .. #. Computation utility
    .. #. Communication utility
    .. #. Model utility
    .. #. Scalability utility
    .. #. Scenario utility



.. existing regulations such as the :cite:`xu2021privacy`
.. Health Insurance Portability and Accountability Act (HIPPA)
.. European General Data Protection Regulation (GDPR)
.. Cybersecurity Law of China, California Consumer Privacy Act (CCPA)

Phases of ML Pipeline
---------------------

    * The techniques that can be applied to training phase, it also can be applied to the serving phase. :cite:`xu2021privacy`
    * However, the techniques that can be applied to the serving phase, it may not be applied to the training phase. :cite:`xu2021privacy`  

.. figure:: /_static/image/image.png

    This figure is taken from the paper :cite:`xu2021privacy`


Privacy Preserving Data Preparation (Data Perspective)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

#. **Traditional anonymization mechanism** : Remove the identifier information before training

   * :math:`k`-anonymity :cite:`sweeney2002k`
   * :math:`l`-diversity :cite:`machanavajjhala2007diversity`
   * :math:`t`-closeness :cite:`li2006t`

#. **Surrogate dataset**

   * Grouping the anonymized data :cite:`yang2019tradeoff`
   * Abstracting the data by sketch techniques :cite:`li2019privacy, haddadpour2020fedsketch`

#. **Differential privacy mechanism** :cite:`dwork2008differential, dwork2010boosting, dwork2014algorithmic` : Add noise to the data to avoid privacy leakage 

   * Inference or de-anonymization attacks :cite:`xu2021privacy` : Like :cite:`wondracek2010practical, rahman2018membership, shokri2017membership, qian2016anonymizing`

#. **Encrypted data** 

   * Confidential-level privacy


Privacy Preserving Model Training (Computational Perspective)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Supporting computation on encrypted data :cite:`xu2021privacy`. Typically, encryption techniques involve two main steps: encoding and decoding :cite:`xu2021privacy`.

* Encoding :math:`\rightarrow` Transform floating-point values into integers
* Decoding :math:`\rightarrow` Recover the floating-point values from trained model or crypto-based training results 

#. **Homomorphic encryption** : 
   
   * BGV scheme :cite:`yagisawa2015fully`
   * CKKS :cite:`cheon2017homomorphic` : Supports approximate arithmetic computation

#. **Functional encryption** : 

   * Multi-party functional encryption :cite:`abdalla2015simple, abdalla2018multi` 

Privacy Preserving Model Serving (Model Perspective)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Include model deployment and inference :cite:`xu2021privacy`

.. #. Inference attacks

#. Private aggregation of teacher ensembles (PATE) 

#. Model transform 

#. Model compression


Privacy Guarantee
-----------------

#. Object-Oriented Privacy Guarantee 
   
   * **Data** oriented privacy guarantee : Prevent the leakage of data, but it will sacrifice of the data utility :cite:`xu2021privacy`

      * **Anonymization mechanism** needs to aggregate and remove proper feature values. Simultaneously, certain values of quasi-identifier features are erased altogether   
      * **Differential privacy** requires the addition of a noise budget to the data sample. 
      * **Encrypted data** may ensure the dataset’s confidentiality, it brings extra processing burden to the subsequent machine learning training.

   * **Model** oriented privacy guarantee : Prevent adversaries from extracting private information through repeated model queries :cite:`xu2021privacy`
      
      * Perturb the trained model

         * **DP-SGD** :cite:`abadi2016deep` : Adding noise into the clipped gradients to achieve a differentially private model

      * Regulate the model access times and patterns

#. Pipeline-Oriented Privacy Guarantee


.. Related Challenges
.. ^^^^^^^^^^^^^^^^^^

.. Research Roadmap
.. ^^^^^^^^^^^^^^^^




References
----------
.. bibliography::
    :filter: docname in docnames
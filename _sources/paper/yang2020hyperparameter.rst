:title-ref:`yang2020hyperparameter`
===================================

* Publish Year : :cite:year:`yang2020hyperparameter`
* Authors : :cite:authors:`yang2020hyperparameter`

Terms Explanation
-----------------

* Model parameter
  
  * The parameters that are learned during the training process (e.g., weights in neural networks)

* Hyper parameter
  
  * The parameters that are **not** learned during the training process

* Hyper-Parameter Optimization (HPO)

* Surrogate functions（代理函數
   
  * 是在優化問題中特別常用的一個概念，尤其在貝葉斯優化（Bayesian Optimization）中。代理函數的核心思想是，用一個比較容易處理且計算成本較低的模型來近似表示目標函數，以便在優化過程中節省計算資源

Abstract
--------

Hyper parameter:

* categorical hyperparameters
* continuous hyperparameters
* discrete hyperparameters

non-linear hyper-parameter interactions

Why hyper-parameter optimization is important?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#. Reduce the human manipulation, because the hyper-parameters usually have many choices which cause the search space to be very large
#. Improve the performance of the model
#. Make the model more reproducible


Problem Statement
^^^^^^^^^^^^^^^^^
* HPO problems are **non-convex** or **non-differentiable** optimization problems, which makes it difficult to find the global optimum :cite:`luo2016review`
	
    #. Non-convex optimization problem（非凸優化問題）：  
	   
       * 凸優化問題是指問題的目標函數具有一個凸的形狀（例如像一個碗的形狀），這意味著從任意一點朝著目標函數的最低點移動時，最終都會到達全局最優解。
	   
       * 非凸優化問題則相反，目標函數可能會有多個局部最小值（局部低谷），類似於山峰與山谷的形狀。在這種情況下，優化算法可能會陷入某個局部最小值，而無法找到全局最低點（全局最優解）。
	
    #. Non-differentiable optimization problem（不可微優化問題）：  
	   
       * 可微優化問題指的是目標函數在每個點上都有明確的導數，這使得我們能夠利用導數資訊（如梯度下降算法）來找到目標函數的最低點。
	   
       * 不可微優化問題是指目標函數在某些點或某些區域中不連續或不可微分，這會使得使用標準的基於導數的優化算法（如梯度下降）變得困難，因為無法得到正確的導數資訊來引導優化方向。


Mehods
^^^^^^

Taxonomy of HPO methods by Hyper-Parameter Type


#. Continuous hyperparameters (e.g., learning rate)

   * Gradient descent-based methods

#. Discrete, Categorical, and Conditional hyperparameters

   * Decision Theoretic Approaches
     
     * Grid search (GS) 
     * Random search (RS)
   
   * Bayesian Optimization Models (BO) :cite:`eggensperger2013towards`
    
     * Choose the next hyper-parameter value by using the results from previously tested values as a guide
     
     * Can use various models as **surrogate functions (代理函數)** to estimate the distribution of the objective function :cite:`eggensperger2015efficient`

       * Gaussian process (GP), random forest (RF), and tree-structured Parzen estimators (TPE) models :cite:`eggensperger2015efficient`
     
     * Difficult to parallelize

   * Multi-fidelity Optimization Techniques

     * bandit-based algorithms

     * Hyperband :cite:`li2018hyperband`, which can be considered as an improvement of Random Search
   
   * Metaheuristics Algorithms
     
     * Genetic algorithms (GA)

     * Particle swarm optimization (PSO) :cite:`lorenzo2017particle`

     * Computational complexity



Mathematical optimization and hyper-parameter optimization problems
-------------------------------------------------------------------

Mathematical optimization is the process of finding the best solution from **a set of available candidates** to maximize or minimize the objective function :cite:`sun2019survey`

optimization problems can be classified as 

#. Unconstrained optimization 
   
   .. math:: 
    
      \min_{x \in \mathbb{R}} f(x)

#. Constrained optimization
   
   * The role of constraints is to limit the possible values of the optimal solution to certain areas of the search space, named the **feasible region** :cite:`bradley1977applied`

   * :math:`g_i(x)` : inequality constraints function
   
   * :math:`h_i(x)` : equality constraints function


References
----------
.. bibliography::
    :filter: docname in docnames
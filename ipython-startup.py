import jupyter_black
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import scipy
import seaborn as sns
import statsmodels.api as sm
import statsmodels.formula.api as smf

plt.style.use('ggplot')
plt.rcParams['figure.figsize'] = (10.0, 8.0)

pd.set_option('display.max_columns', 1000, 'display.width', 1000, 'display.max_rows',1000)


jupyter_black.load()

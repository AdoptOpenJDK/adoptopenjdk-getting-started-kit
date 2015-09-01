R is used to parse the JMH benchmark data and plot these graphs.


##Types of Error bars used to plot the diagram

<table>
    <thead>
    <tr>
         <td>Error bars</td>
         <td>Type</td>
         <td>Description</td>
    </tr>
    </thead>
    <tr>
        <td>Standard error (SEM)</td>
        <td>Inferential</td>
        <td>A measure of how variable the mean will be, if you repeat the whole study many times.</td>
    </tr>
    <tr>
        <td>Confidence interval (CI)</td>
        <td>Inferential</td>
        <td>A range of values one can be 99% confident contains the true mean.</td>
    </tr>
</table>

###Java Collections

R summary

<table>
    <thead>
    <tr>
         <td>Min.</td>
         <td>1st Qu.</td>
         <td>Median</td>
         <td>Mean</td>
         <td>3rd Qu.</td>
         <td>Max.</td>
    </tr>
    </thead>
    <tr>
        <td> 0.2720</td>
    <td>0.3558</td>
    <td>0.5040</td>
    <td>0.4950</td>
    <td>0.5742</td>
    <td>0.8150</td>
    </tr>
</table>


#### R graph showing error bars and 99% CI as a band

![Alt text](ggplotjc.png)

###GS Collections

R summary

<table>
    <thead>
    <tr>
         <td>Min.</td>
         <td>1st Qu.</td>
         <td>Median</td>
         <td>Mean</td>
         <td>3rd Qu.</td>
         <td>Max.</td>
    </tr>
    </thead>
    <tr>

        <td>0.4860</td>
    <td>0.5780</td>
    <td>0.7970</td>
    <td>0.4950</td>
    <td>1.0060</td>
    <td>1.4770</td>
    </tr>
</table>

#### R graph showing error bars and 99% CI as a band


![Alt text](ggplotgc.png)

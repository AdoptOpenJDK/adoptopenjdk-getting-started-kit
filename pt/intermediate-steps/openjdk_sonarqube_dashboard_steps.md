# OpenJDK SonarQube Dashboard steps

We'll configure sonar to display the dashboard below by:

* Creating filters for each OpenJDK version
* Configuring the Widgets of the default dashboard


##Creating filters for each OpenJDK version##

While SonarQube is running, log in as admin.

1. For OpenJDK8
    * Click the top navigation, 'Measure.'
    * Click 'New Search'
    * Click 'More Criteria' --> drop down 'Name contains'
    * Type 'OpenJDK8'
    * On right hand side, Click 'Search.' Only OpenJDK8 projects are shown.
<br><br>
2. For OpenJDK9
    * Click the top navigation, 'Measure.'
    * Click 'New Search'
    * Click 'More Criteria' --> drop down 'Name contains'
    * type 'OpenJDK9'
    * on right hand side, Click 'Search.' Only OpenJDK9 projects are shown.

##Configuring the Dashboard##
We'll configure the SonarQube to display each OpenJDK version separately.

###OpenJDK8 Dashboard###
1. Under the orange box of categories, you'll see 4 widgets:
2. Move the widget on the right and place it on top of the 'Welcome Widget'. This will push the 'Welcome' downward.
3. In the orange box, select the tab 'Filters'
4. Move this new Widget under the first one
5. On the right, we'll edit the Widget 'Measure Filter as Treemap' to show only OpenJDK8 projects.

###OpenJDK9 Dashboard###
1. Under the orange box of categories, you'll see 4 widgets:
2. Move the widget on the right and place it on top of the 'Welcome Widget'. This will push the 'Welcome' downward.
3. In the orange box, select the tab 'Filters'
4. Move this new Widget under the first one
5. On the right, we'll edit the Widget 'Measure Filter as Treemap' to show only OpenJDK9 projects.
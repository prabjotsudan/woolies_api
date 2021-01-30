Feature: Check temperature for coming Thursday

  Background:
    * url 'http://api.openweathermap.org'

    * def data = read('classpath:weather/testData/params.json')
    * params { lat: '#(data.lat)', lon: '#(data.lon)', cnt: '#(data.cnt)', units: '#(data.units)', units: '#(data.units)', appid:'#(data.appid)', exclude: '#(data.exclude)'  }

    #Function to get day of week
    * def dayOfWeek =
    """
    function (dateValue) {
    	var Calendar = Java.type('java.util.Calendar');
    	var cal = Calendar.getInstance();
		cal.setTimeInMillis(dateValue * 1000);
		var dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
		return dayOfWeek;
    }
    """

  Scenario: Check if temperature in Sydney for coming Thursday is grater than 10 degree Celsius
    Given path 'data/2.5/onecall'
    When method get
    Then status 200
    Then print response

    # Checking the week day value for the first entry in response and calculating number of days till next thursday
    * def day = dayOfWeek(response.daily[0].dt)
    * def nextThursday = day < 5 ? 5-day : 7 -day+5
    * eval if (day == 5) nextThursday = day

    Then assert response.daily[nextThursday].temp.day > 10
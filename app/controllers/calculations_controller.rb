class CalculationsController < ApplicationController

  def word_count
    @text = params[:user_text]
    @special_word = params[:user_word]

    # ================================================================================
    # Your code goes below.
    # The text the user input is in the string @text.
    # The special word the user input is in the string @special_word.
    # ================================================================================


@character_count_with_spaces = @text.length

text = @text.downcase

wc = text.split.count

    @word_count = wc

ccws = text.length

    @character_count_with_spaces = ccws



spaces = text.count " "

ccwos = ccws - spaces

    @character_count_without_spaces = ccwos
text = text.gsub(/[^a-z0-9\s]/i, "")
    @occurrences = text.split.count @special_word.to_s


    # ================================================================================
    # Your code goes above.
    # ================================================================================

    render("word_count.html.erb")
  end

  def loan_payment
    @apr = params[:annual_percentage_rate].to_f
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_f

    # ================================================================================
    # Your code goes below.
    # The annual percentage rate the user input is in the decimal @apr.
    # The number of years the user input is in the integer @years.
    # The principal value the user input is in the decimal @principal.
    # ================================================================================

  apr =  @apr
  apr = apr/100
  # rate = ((1+(apr/12))**12)-1
  rate = apr/12
  months = @years*12
  pal =  @principal

  pmt = (pal*rate)/(1-(1+rate)**(-months))


    @monthly_payment = pmt

    # ================================================================================
    # Your code goes above.
    # ================================================================================

    render("loan_payment.html.erb")
  end

  def time_between
    @starting = Chronic.parse(params[:starting_time])
    @ending = Chronic.parse(params[:ending_time])

    # ================================================================================
    # Your code goes below.
    # The start time is in the Time @starting.
    # The end time is in the Time @ending.
    # Note: Ruby stores Times in terms of seconds since Jan 1, 1970.
    #   So if you subtract one time from another, you will get an integer
    #   number of seconds as a result.
    # ================================================================================

starting = @starting.to_s

split1 = starting.split

date1 = split1[0]
date1 = date1.to_s
date1 = date1.gsub("-"," ")

time1 = split1[1]
time1 = time1.to_s
time1 = time1.gsub(":"," ")
time1 = time1.split
seconds1 = time1[2]
minutes1 = time1[1]
hours1 = time1[0]
seconds1 = seconds1.to_f
minutes1 = minutes1.to_f
hours1 = hours1.to_f

ending = @ending.to_s

split2 = ending.split

date2 = split2[0]
date2 = date2.to_s
date2 = date2.gsub("-"," ")

time2 = split2[1]
time2 = time2.to_s
time2 = time2.gsub(":"," ")
time2 = time2.split
seconds2 = time2[2]
minutes2 = time2[1]
hours2 = time2[0]
seconds2 = seconds2.to_f
minutes2 = minutes2.to_f
hours2 = hours2.to_f


sout = seconds2 - seconds1
mout = minutes2 - minutes1
hout = hours2 - hours1

    @seconds = sout
    @minutes = mout
    @hours = hout
    @days = time2.to_s
    @weeks = split1.to_s
    @years = @starting.to_s


    # ================================================================================
    # Your code goes above.
    # ================================================================================

    render("time_between.html.erb")
  end

  def descriptive_statistics
    @numbers = params[:list_of_numbers].gsub(',', '').split.map(&:to_f)

    # ================================================================================
    # Your code goes below.
    # The numbers the user input are in the array @numbers.
    # ================================================================================

    @sorted_numbers = "Replace this string with your answer."

    @count = "Replace this string with your answer."

    @minimum = "Replace this string with your answer."

    @maximum = "Replace this string with your answer."

    @range = "Replace this string with your answer."

    @median = "Replace this string with your answer."

    @sum = "Replace this string with your answer."

    @mean = "Replace this string with your answer."

    @variance = "Replace this string with your answer."

    @standard_deviation = "Replace this string with your answer."

    @mode = "Replace this string with your answer."

    # ================================================================================
    # Your code goes above.
    # ================================================================================

    render("descriptive_statistics.html.erb")
  end
end

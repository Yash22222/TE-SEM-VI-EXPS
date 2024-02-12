# Load required libraries
library(forecast)

# Load the AirPassengers dataset
data("AirPassengers")

# Convert the dataset to a time series object
passenger_ts <- ts(AirPassengers, start = c(1949, 1), frequency = 12)

# Explore the data
plot(passenger_ts, main = "AirPassengers Data")

# Decompose the time series to visualize trend, seasonality, and residual components
decomposed_ts <- decompose(passenger_ts)
plot(decomposed_ts)

# Fit an ARIMA model to the data
arima_model <- auto.arima(passenger_ts)

# Summary of the ARIMA model
summary(arima_model)

# Plot the actual vs. fitted values
plot(fitted(arima_model), main = "Actual vs. Fitted Values")

# Forecast future values
forecast_values <- forecast(arima_model, h = 24)  # Forecasting for the next 2 years (24 months)
plot(forecast_values, main = "Forecasted Passenger Numbers")

# Evaluate the model (optional)
accuracy(arima_model)


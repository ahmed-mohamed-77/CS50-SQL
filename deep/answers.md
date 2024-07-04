# From the Deep

## Random Partitioning

### Reasons to Adopt
1. **Even Distribution**: Random partitioning ensures an even distribution of observations across all boats. Each observation is equally likely to be assigned to any boat, preventing any single boat from becoming overloaded with data.
2. **Simple Implementation**: The logic for assigning observations is straightforward. Each observation is randomly sent to one of the available boats, simplifying the partitioning process.

### Reasons Not to Adopt
1. **Inefficient Queries**: When querying for observations within a specific time range, the query must be run on all boats because data is randomly distributed. This can lead to inefficiencies and longer query times.
2. **Complex Data Aggregation**: Since observations are scattered randomly, aggregating data for analysis or reporting purposes can be complex and time-consuming, as data must be gathered from multiple sources.

## Partitioning by Hour

### Reasons to Adopt
1. **Efficient Time-Range Queries**: By partitioning data by the hour, observations within specific time ranges are stored on specific boats. This makes querying for time-bound data efficient, as the query can be directed to the relevant boat.
2. **Simplified Data Management**: Managing and querying time-bound data becomes more straightforward, as data for a particular time period is localized to a single boat.

### Reasons Not to Adopt
1. **Uneven Data Distribution**: If observations are concentrated within certain hours, specific boats may become overloaded. For instance, if most observations occur between midnight and 1am, the boat handling that time range will receive a disproportionate amount of data.
2. **Limited Flexibility**: This approach is less flexible in distributing the load evenly compared to random partitioning. It assumes a uniform distribution of observations throughout the day, which may not be the case.

## Partitioning by Hash Value

### Reasons to Adopt
1. **Even Distribution**: Hash partitioning ensures an even distribution of data across all boats. A good hash function will distribute observations uniformly, preventing any single boat from becoming overloaded.
2. **Efficient Specific Queries**: If the hash function and value are known, specific observations can be efficiently queried by directing the query to the boat that holds the relevant hash value.

### Reasons Not to Adopt
1. **Complex Range Queries**: Querying for a range of observations requires running the query on all boats, as hash values do not correlate directly with time ranges. This can lead to inefficiencies similar to random partitioning.
2. **Complex Data Management**: Understanding and managing the distribution of data becomes more complex, as it depends on the hash function. This adds an extra layer of complexity compared to more intuitive partitioning methods like partitioning by hour.

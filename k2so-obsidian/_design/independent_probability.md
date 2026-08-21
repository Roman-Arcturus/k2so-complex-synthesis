**Independent Probability Math**

With `independent_probability`, the engine rolls each item independently. Both results can succeed or fail on the exact same crafting cycle, which changes your effective yields:

- **Both Clean & Used drop ($20\%$):** $0.50 \times 0.40$
    
- **Clean Filter only ($30\%$):** $0.50 \times (1 - 0.40)$
    
- **Used Filter only ($20\%$):** $(1 - 0.50) \times 0.40$
    
- **Filter Destroyed ($30\%$):** $(1 - 0.50) \times (1 - 0.40)$
    

To bring the true destruction rate down closer to $10\%$ using independent rolls, set 
$P(\text{clean}) = 0.70$ and $P(\text{used}) = 0.60$. 

This yields $(1 - 0.70) \times (1 - 0.60) = 0.30 \times 0.40 = 0.12$ ($12\%$ destruction).
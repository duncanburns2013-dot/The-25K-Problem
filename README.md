# The $25,000 Problem

**Data analysis showing how Massachusetts' $25K homebuyer subsidy inflates prices in the communities it claims to help — and saddles the poorest buyers with debt for the privilege.**

*The sellers get the raise. The buyers get the debt. The taxpayers get the bill.*

🔗 **Live:** [duncanburns2013-dot.github.io/The-25K-Problem](https://duncanburns2013-dot.github.io/The-25K-Problem)

---

## Key Findings

- **$25K covers 167% of the FHA down payment on a $300K home** — zero out of pocket. On a $1M home? 50%. The demand boost carpet-bombs the cheapest markets.
- **Bottom-tier homes in Gateway Cities rose 74% since 2019.** Top-tier only 57%. That's a 17-point gap.
- **Non-Gateway communities show only a 5-point gap.** The subsidy-eligible price band is where all the inflation concentrates.
- **Springfield, Fitchburg, New Bedford entry-level homes doubled** since 2019.
- **MA has 1.6 months of inventory.** A balanced market needs 4–6. You can't subsidize your way out of a supply crisis.
- **Buyers start underwater.** On a $350K home, the subsidy inflates the price to ~$370K. The buyer owes $376K in total debt. Day one: negative equity.

## Data Sources

| Source | What | Access |
|---|---|---|
| **Zillow ZHVI** | Home values by price tier (bottom/mid/top), monthly, every MA city since 2000 | Free CSV at [zillow.com/research/data](https://www.zillow.com/research/data/) |
| **MLS PIN** | Closed sale transactions — avg price, $/sqft, DOM, volume, months supply | Licensed via MLS PIN |
| **MassHousing** | Program details, borrower counts, DPA usage | [masshousing.com](https://www.masshousing.com) / [mass.gov](https://www.mass.gov) |

## Methodology

**Zillow ZHVI Price Tiers:**
- Bottom tier: 5th–35th percentile of home values
- Top tier: 65th–95th percentile
- Growth: January 2019 to March 2026
- Gateway Cities per MassHousing designation (26 cities)

**MLS PIN Data:**
- Single-family residential closed sales, 2014–2026
- Regions: MA statewide, Essex County, Newburyport, Greater Newburyport (6 towns)

**$25K Impact Calculation:**
- FHA minimum down payment: 5%
- $25K / (price x 5%) = coverage percentage
- Debt burden table assumes conservative 5.7% price inflation from subsidy-fueled demand

**Debt Analysis:**
- $25K is a deferred second mortgage (lien) — owed back at sale or refinance
- When all buyers at a price point receive the subsidy, no individual advantage is gained
- Prices inflate by approximately the subsidy amount, creating negative equity on day one

## Updating Data

```bash
cd data/
bash update.sh
```

Pulls latest Zillow ZHVI CSVs and filters to Massachusetts. MLS PIN numbers require manual update from reports.

## Hosting

Single `index.html`, no build step. GitHub Pages:

1. Settings → Pages → Source: **main** / **/ (root)**
2. Save — site goes live at the URL above

## License

Data is from public sources. Analysis and presentation are original work. Share freely with attribution.

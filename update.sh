#!/bin/bash
# Pull latest Zillow ZHVI price tier data for Massachusetts
# Run monthly to keep analysis current

echo "Downloading Zillow ZHVI price tier data..."

curl -sL "https://files.zillowstatic.com/research/public_csvs/zhvi/City_zhvi_uc_sfrcondo_tier_0.0_0.33_sm_sa_month.csv" -o zhvi_bottom_tier.csv
echo "  ✓ Bottom tier: $(wc -l < zhvi_bottom_tier.csv) rows"

curl -sL "https://files.zillowstatic.com/research/public_csvs/zhvi/City_zhvi_uc_sfrcondo_tier_0.33_0.67_sm_sa_month.csv" -o zhvi_mid_tier.csv
echo "  ✓ Mid tier: $(wc -l < zhvi_mid_tier.csv) rows"

curl -sL "https://files.zillowstatic.com/research/public_csvs/zhvi/City_zhvi_uc_sfrcondo_tier_0.67_1.0_sm_sa_month.csv" -o zhvi_top_tier.csv
echo "  ✓ Top tier: $(wc -l < zhvi_top_tier.csv) rows"

echo ""
echo "Filtering Massachusetts..."

for f in zhvi_bottom_tier.csv zhvi_mid_tier.csv zhvi_top_tier.csv; do
    head -1 "$f" > "ma_${f}"
    grep ",MA," "$f" >> "ma_${f}"
    echo "  ✓ ma_${f}: $(tail -n +2 "ma_${f}" | wc -l) MA cities"
done

echo ""
echo "Latest data column:"
head -1 zhvi_bottom_tier.csv | tr ',' '\n' | tail -1
echo ""
echo "Done."

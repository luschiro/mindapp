select
  -- try_cast(discovery_year as integer) as testin,
  --try_cast(vhnmin as double) as vhnmin,
  --vhnmin,
  count(*) as qt
from raw
group by 1
order by 1 desc
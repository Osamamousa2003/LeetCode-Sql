select round(device_id /player_id,2) As fraction
from Activity
where games_played=0;
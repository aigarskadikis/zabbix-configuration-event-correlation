DELETE e FROM events e
LEFT JOIN event_recovery ON (event_recovery.eventid=e.eventid)
WHERE event_recovery.c_eventid IS NOT NULL
AND e.clock < UNIX_TIMESTAMP(NOW() - INTERVAL 30 DAY);

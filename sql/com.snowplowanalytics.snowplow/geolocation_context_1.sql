-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.1.0
-- Generated: 2016-09-02 17:18

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_geolocation_context_1 (
    "schema_vendor"               VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_name"                 VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_format"               VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_version"              VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "root_id"                     CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"                 TIMESTAMP        ENCODE LZO       NOT NULL,
    "ref_root"                    VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "ref_tree"                    VARCHAR(1500)    ENCODE RUNLENGTH NOT NULL,
    "ref_parent"                  VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "latitude"                    DOUBLE PRECISION ENCODE RAW       NOT NULL,
    "longitude"                   DOUBLE PRECISION ENCODE RAW       NOT NULL,
    "altitude"                    DOUBLE PRECISION ENCODE RAW,
    "altitude_accuracy"           DOUBLE PRECISION ENCODE RAW,
    "bearing"                     DOUBLE PRECISION ENCODE RAW,
    "latitude_longitude_accuracy" DOUBLE PRECISION ENCODE RAW,
    "speed"                       DOUBLE PRECISION ENCODE RAW,
    "timestamp"                   BIGINT           ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_geolocation_context_1 IS 'iglu:com.snowplowanalytics.snowplow/geolocation_context/jsonschema/1-1-0';
-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.1.0
-- Generated: 2016-09-02 17:18

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_segment_traits_1 (
    "schema_vendor"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"         VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"      VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"             CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"         TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"            VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"            VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"          VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "address.city"        VARCHAR(512)  ENCODE LZO,
    "address.country"     VARCHAR(4096) ENCODE LZO,
    "address.postal_code" VARCHAR(4096) ENCODE LZO,
    "address.state"       VARCHAR(4096) ENCODE LZO,
    "address.street"      VARCHAR(4096) ENCODE LZO,
    "age"                 BIGINT        ENCODE LZO,
    "avatar"              VARCHAR(8192) ENCODE LZO,
    "birthday"            TIMESTAMP     ENCODE LZO,
    "created_at"          TIMESTAMP     ENCODE LZO,
    "description"         VARCHAR(4096) ENCODE LZO,
    "email"               VARCHAR(512)  ENCODE LZO,
    "first_name"          VARCHAR(4096) ENCODE LZO,
    "id"                  VARCHAR(4096) ENCODE LZO,
    "last_name"           VARCHAR(4096) ENCODE LZO,
    "phone"               VARCHAR(128)  ENCODE LZO,
    "title"               VARCHAR(4096) ENCODE LZO,
    "username"            VARCHAR(4096) ENCODE LZO,
    "website"             VARCHAR(8192) ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_segment_traits_1 IS 'iglu:com.segment/traits/jsonschema/1-0-0';
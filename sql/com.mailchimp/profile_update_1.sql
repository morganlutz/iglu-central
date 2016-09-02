-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.1.0
-- Generated: 2016-09-02 17:18

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_mailchimp_profile_update_1 (
    "schema_vendor"         VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"           VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"         VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"        VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"               CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"           TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"              VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"              VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"            VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "data.email"            VARCHAR(4096) ENCODE LZO,
    "data.email_type"       VARCHAR(4096) ENCODE LZO,
    "data.id"               VARCHAR(4096) ENCODE LZO,
    "data.ip_opt"           VARCHAR(4096) ENCODE LZO,
    "data.list_id"          VARCHAR(4096) ENCODE LZO,
    "data.merges.email"     VARCHAR(4096) ENCODE LZO,
    "data.merges.fname"     VARCHAR(4096) ENCODE LZO,
    "data.merges.interests" VARCHAR(4096) ENCODE LZO,
    "data.merges.lname"     VARCHAR(4096) ENCODE LZO,
    "data.web_id"           VARCHAR(4096) ENCODE LZO,
    "fired_at"              TIMESTAMP     ENCODE LZO,
    "type"                  VARCHAR(4096) ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_mailchimp_profile_update_1 IS 'iglu:com.mailchimp/profile_update/jsonschema/1-0-0';
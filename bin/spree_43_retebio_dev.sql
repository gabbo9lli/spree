--
-- PostgreSQL database dump
--

-- Dumped from database version 11.12
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: action_mailbox_inbound_emails; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.action_mailbox_inbound_emails (
    id bigint NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    message_id character varying NOT NULL,
    message_checksum character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_mailbox_inbound_emails OWNER TO retebio;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.action_mailbox_inbound_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_mailbox_inbound_emails_id_seq OWNER TO retebio;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.action_mailbox_inbound_emails_id_seq OWNED BY public.action_mailbox_inbound_emails.id;


--
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO retebio;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO retebio;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO retebio;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO retebio;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO retebio;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO retebio;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO retebio;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO retebio;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO retebio;

--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.friendly_id_slugs (
    id integer NOT NULL,
    slug character varying NOT NULL,
    sluggable_id bigint NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO retebio;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO retebio;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO retebio;

--
-- Name: spree_addresses; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_addresses (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    address1 character varying,
    address2 character varying,
    city character varying,
    zipcode character varying,
    phone character varying,
    state_name character varying,
    alternative_phone character varying,
    company character varying,
    state_id bigint,
    country_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint,
    deleted_at timestamp without time zone,
    label character varying
);


ALTER TABLE public.spree_addresses OWNER TO retebio;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_addresses_id_seq OWNER TO retebio;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_addresses_id_seq OWNED BY public.spree_addresses.id;


--
-- Name: spree_adjustments; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_adjustments (
    id integer NOT NULL,
    source_type character varying,
    source_id bigint,
    adjustable_type character varying,
    adjustable_id bigint,
    amount numeric(10,2),
    label character varying,
    mandatory boolean,
    eligible boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    state character varying,
    order_id bigint NOT NULL,
    included boolean DEFAULT false
);


ALTER TABLE public.spree_adjustments OWNER TO retebio;

--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_adjustments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_adjustments_id_seq OWNER TO retebio;

--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_adjustments_id_seq OWNED BY public.spree_adjustments.id;


--
-- Name: spree_assets; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_assets (
    id integer NOT NULL,
    viewable_type character varying,
    viewable_id bigint,
    attachment_width integer,
    attachment_height integer,
    attachment_file_size integer,
    "position" integer,
    attachment_content_type character varying,
    attachment_file_name character varying,
    type character varying(75),
    attachment_updated_at timestamp without time zone,
    alt text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_assets OWNER TO retebio;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_assets_id_seq OWNER TO retebio;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_assets_id_seq OWNED BY public.spree_assets.id;


--
-- Name: spree_calculators; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_calculators (
    id integer NOT NULL,
    type character varying,
    calculable_type character varying,
    calculable_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    preferences text,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_calculators OWNER TO retebio;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_calculators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_calculators_id_seq OWNER TO retebio;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_calculators_id_seq OWNED BY public.spree_calculators.id;


--
-- Name: spree_checks; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_checks (
    id bigint NOT NULL,
    payment_method_id bigint,
    user_id bigint,
    account_holder_name character varying,
    account_holder_type character varying,
    routing_number character varying,
    account_number character varying,
    account_type character varying DEFAULT 'checking'::character varying,
    status character varying,
    last_digits character varying,
    gateway_customer_profile_id character varying,
    gateway_payment_profile_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_checks OWNER TO retebio;

--
-- Name: spree_checks_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_checks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_checks_id_seq OWNER TO retebio;

--
-- Name: spree_checks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_checks_id_seq OWNED BY public.spree_checks.id;


--
-- Name: spree_cms_pages; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_cms_pages (
    id bigint NOT NULL,
    title character varying NOT NULL,
    meta_title character varying,
    content text,
    meta_description text,
    visible boolean DEFAULT true,
    slug character varying,
    type character varying,
    locale character varying,
    deleted_at timestamp without time zone,
    store_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_cms_pages OWNER TO retebio;

--
-- Name: spree_cms_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_cms_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_cms_pages_id_seq OWNER TO retebio;

--
-- Name: spree_cms_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_cms_pages_id_seq OWNED BY public.spree_cms_pages.id;


--
-- Name: spree_cms_sections; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_cms_sections (
    id bigint NOT NULL,
    name character varying NOT NULL,
    content text,
    settings text,
    fit character varying,
    destination character varying,
    type character varying,
    "position" integer,
    linked_resource_type character varying,
    linked_resource_id bigint,
    cms_page_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_cms_sections OWNER TO retebio;

--
-- Name: spree_cms_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_cms_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_cms_sections_id_seq OWNER TO retebio;

--
-- Name: spree_cms_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_cms_sections_id_seq OWNED BY public.spree_cms_sections.id;


--
-- Name: spree_countries; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_countries (
    id integer NOT NULL,
    iso_name character varying,
    iso character varying NOT NULL,
    iso3 character varying NOT NULL,
    name character varying,
    numcode integer,
    states_required boolean DEFAULT false,
    updated_at timestamp without time zone,
    zipcode_required boolean DEFAULT true,
    created_at timestamp without time zone
);


ALTER TABLE public.spree_countries OWNER TO retebio;

--
-- Name: spree_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_countries_id_seq OWNER TO retebio;

--
-- Name: spree_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_countries_id_seq OWNED BY public.spree_countries.id;


--
-- Name: spree_credit_cards; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_credit_cards (
    id integer NOT NULL,
    month character varying,
    year character varying,
    cc_type character varying,
    last_digits character varying,
    address_id bigint,
    gateway_customer_profile_id character varying,
    gateway_payment_profile_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying,
    user_id bigint,
    payment_method_id bigint,
    "default" boolean DEFAULT false NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_credit_cards OWNER TO retebio;

--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_credit_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_credit_cards_id_seq OWNER TO retebio;

--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_credit_cards_id_seq OWNED BY public.spree_credit_cards.id;


--
-- Name: spree_customer_returns; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_customer_returns (
    id integer NOT NULL,
    number character varying,
    stock_location_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    store_id bigint
);


ALTER TABLE public.spree_customer_returns OWNER TO retebio;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_customer_returns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_customer_returns_id_seq OWNER TO retebio;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_customer_returns_id_seq OWNED BY public.spree_customer_returns.id;


--
-- Name: spree_gateways; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_gateways (
    id integer NOT NULL,
    type character varying,
    name character varying,
    description text,
    active boolean DEFAULT true,
    environment character varying DEFAULT 'development'::character varying,
    server character varying DEFAULT 'test'::character varying,
    test_mode boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    preferences text
);


ALTER TABLE public.spree_gateways OWNER TO retebio;

--
-- Name: spree_gateways_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_gateways_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_gateways_id_seq OWNER TO retebio;

--
-- Name: spree_gateways_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_gateways_id_seq OWNED BY public.spree_gateways.id;


--
-- Name: spree_inventory_units; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_inventory_units (
    id integer NOT NULL,
    state character varying,
    variant_id bigint,
    order_id bigint,
    shipment_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    pending boolean DEFAULT true,
    line_item_id bigint,
    quantity integer DEFAULT 1,
    original_return_item_id bigint
);


ALTER TABLE public.spree_inventory_units OWNER TO retebio;

--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_inventory_units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_inventory_units_id_seq OWNER TO retebio;

--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_inventory_units_id_seq OWNED BY public.spree_inventory_units.id;


--
-- Name: spree_line_items; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_line_items (
    id integer NOT NULL,
    variant_id bigint,
    order_id bigint,
    quantity integer NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    currency character varying,
    cost_price numeric(10,2),
    tax_category_id bigint,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    pre_tax_amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_line_items OWNER TO retebio;

--
-- Name: spree_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_line_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_line_items_id_seq OWNER TO retebio;

--
-- Name: spree_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_line_items_id_seq OWNED BY public.spree_line_items.id;


--
-- Name: spree_log_entries; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_log_entries (
    id integer NOT NULL,
    source_type character varying,
    source_id bigint,
    details text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_log_entries OWNER TO retebio;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_log_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_log_entries_id_seq OWNER TO retebio;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_log_entries_id_seq OWNED BY public.spree_log_entries.id;


--
-- Name: spree_menu_items; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_menu_items (
    id bigint NOT NULL,
    name character varying NOT NULL,
    subtitle character varying,
    destination character varying,
    new_window boolean DEFAULT false,
    item_type character varying,
    linked_resource_type character varying DEFAULT 'URL'::character varying,
    linked_resource_id bigint,
    code character varying,
    parent_id bigint,
    lft bigint NOT NULL,
    rgt bigint NOT NULL,
    depth integer DEFAULT 0 NOT NULL,
    menu_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_menu_items OWNER TO retebio;

--
-- Name: spree_menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_menu_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_menu_items_id_seq OWNER TO retebio;

--
-- Name: spree_menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_menu_items_id_seq OWNED BY public.spree_menu_items.id;


--
-- Name: spree_menus; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_menus (
    id bigint NOT NULL,
    name character varying,
    location character varying,
    locale character varying,
    store_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_menus OWNER TO retebio;

--
-- Name: spree_menus_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_menus_id_seq OWNER TO retebio;

--
-- Name: spree_menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_menus_id_seq OWNED BY public.spree_menus.id;


--
-- Name: spree_oauth_access_grants; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_oauth_access_grants (
    id bigint NOT NULL,
    resource_owner_id bigint NOT NULL,
    application_id bigint NOT NULL,
    token character varying NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    revoked_at timestamp without time zone,
    scopes character varying
);


ALTER TABLE public.spree_oauth_access_grants OWNER TO retebio;

--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_oauth_access_grants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_access_grants_id_seq OWNER TO retebio;

--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_oauth_access_grants_id_seq OWNED BY public.spree_oauth_access_grants.id;


--
-- Name: spree_oauth_access_tokens; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_oauth_access_tokens (
    id bigint NOT NULL,
    resource_owner_id bigint,
    application_id bigint,
    token character varying NOT NULL,
    refresh_token character varying,
    expires_in integer,
    revoked_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    scopes character varying,
    previous_refresh_token character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.spree_oauth_access_tokens OWNER TO retebio;

--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_oauth_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_access_tokens_id_seq OWNER TO retebio;

--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_oauth_access_tokens_id_seq OWNED BY public.spree_oauth_access_tokens.id;


--
-- Name: spree_oauth_applications; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_oauth_applications (
    id bigint NOT NULL,
    name character varying NOT NULL,
    uid character varying NOT NULL,
    secret character varying NOT NULL,
    redirect_uri text NOT NULL,
    scopes character varying DEFAULT ''::character varying NOT NULL,
    confidential boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_oauth_applications OWNER TO retebio;

--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_oauth_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_applications_id_seq OWNER TO retebio;

--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_oauth_applications_id_seq OWNED BY public.spree_oauth_applications.id;


--
-- Name: spree_option_type_prototypes; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_option_type_prototypes (
    prototype_id bigint,
    option_type_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_option_type_prototypes OWNER TO retebio;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_option_type_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_type_prototypes_id_seq OWNER TO retebio;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_option_type_prototypes_id_seq OWNED BY public.spree_option_type_prototypes.id;


--
-- Name: spree_option_types; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_option_types (
    id integer NOT NULL,
    name character varying(100),
    presentation character varying(100),
    "position" integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    filterable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.spree_option_types OWNER TO retebio;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_types_id_seq OWNER TO retebio;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_option_types_id_seq OWNED BY public.spree_option_types.id;


--
-- Name: spree_option_value_variants; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_option_value_variants (
    variant_id bigint,
    option_value_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_option_value_variants OWNER TO retebio;

--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_option_value_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_value_variants_id_seq OWNER TO retebio;

--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_option_value_variants_id_seq OWNED BY public.spree_option_value_variants.id;


--
-- Name: spree_option_values; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_option_values (
    id integer NOT NULL,
    "position" integer,
    name character varying,
    presentation character varying,
    option_type_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_option_values OWNER TO retebio;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_option_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_values_id_seq OWNER TO retebio;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_option_values_id_seq OWNED BY public.spree_option_values.id;


--
-- Name: spree_order_promotions; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_order_promotions (
    order_id bigint,
    promotion_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_order_promotions OWNER TO retebio;

--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_order_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_order_promotions_id_seq OWNER TO retebio;

--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_order_promotions_id_seq OWNED BY public.spree_order_promotions.id;


--
-- Name: spree_orders; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_orders (
    id integer NOT NULL,
    number character varying(32),
    item_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    total numeric(10,2) DEFAULT 0.0 NOT NULL,
    state character varying,
    adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    user_id bigint,
    completed_at timestamp without time zone,
    bill_address_id bigint,
    ship_address_id bigint,
    payment_total numeric(10,2) DEFAULT 0.0,
    shipment_state character varying,
    payment_state character varying,
    email character varying,
    special_instructions text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    currency character varying,
    last_ip_address character varying,
    created_by_id bigint,
    shipment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    channel character varying DEFAULT 'spree'::character varying,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    item_count integer DEFAULT 0,
    approver_id bigint,
    approved_at timestamp without time zone,
    confirmation_delivered boolean DEFAULT false,
    considered_risky boolean DEFAULT false,
    token character varying,
    canceled_at timestamp without time zone,
    canceler_id bigint,
    store_id bigint,
    state_lock_version integer DEFAULT 0 NOT NULL,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    store_owner_notification_delivered boolean
);


ALTER TABLE public.spree_orders OWNER TO retebio;

--
-- Name: spree_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_orders_id_seq OWNER TO retebio;

--
-- Name: spree_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_orders_id_seq OWNED BY public.spree_orders.id;


--
-- Name: spree_payment_capture_events; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_payment_capture_events (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0,
    payment_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_payment_capture_events OWNER TO retebio;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_payment_capture_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payment_capture_events_id_seq OWNER TO retebio;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_payment_capture_events_id_seq OWNED BY public.spree_payment_capture_events.id;


--
-- Name: spree_payment_methods; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_payment_methods (
    id integer NOT NULL,
    type character varying,
    name character varying,
    description text,
    active boolean DEFAULT true,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    display_on character varying DEFAULT 'both'::character varying,
    auto_capture boolean,
    preferences text,
    "position" integer DEFAULT 0
);


ALTER TABLE public.spree_payment_methods OWNER TO retebio;

--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payment_methods_id_seq OWNER TO retebio;

--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_payment_methods_id_seq OWNED BY public.spree_payment_methods.id;


--
-- Name: spree_payment_methods_stores; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_payment_methods_stores (
    payment_method_id bigint,
    store_id bigint
);


ALTER TABLE public.spree_payment_methods_stores OWNER TO retebio;

--
-- Name: spree_payments; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_payments (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    order_id bigint,
    source_type character varying,
    source_id bigint,
    payment_method_id bigint,
    state character varying,
    response_code character varying,
    avs_response character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    number character varying,
    cvv_response_code character varying,
    cvv_response_message character varying,
    intent_client_key character varying
);


ALTER TABLE public.spree_payments OWNER TO retebio;

--
-- Name: spree_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payments_id_seq OWNER TO retebio;

--
-- Name: spree_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_payments_id_seq OWNED BY public.spree_payments.id;


--
-- Name: spree_preferences; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_preferences (
    id integer NOT NULL,
    value text,
    key character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_preferences OWNER TO retebio;

--
-- Name: spree_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_preferences_id_seq OWNER TO retebio;

--
-- Name: spree_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_preferences_id_seq OWNED BY public.spree_preferences.id;


--
-- Name: spree_prices; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_prices (
    id integer NOT NULL,
    variant_id bigint NOT NULL,
    amount numeric(10,2),
    currency character varying,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    compare_at_amount numeric(10,2)
);


ALTER TABLE public.spree_prices OWNER TO retebio;

--
-- Name: spree_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prices_id_seq OWNER TO retebio;

--
-- Name: spree_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_prices_id_seq OWNED BY public.spree_prices.id;


--
-- Name: spree_product_option_types; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_product_option_types (
    id integer NOT NULL,
    "position" integer,
    product_id bigint,
    option_type_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_product_option_types OWNER TO retebio;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_product_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_option_types_id_seq OWNER TO retebio;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_product_option_types_id_seq OWNED BY public.spree_product_option_types.id;


--
-- Name: spree_product_promotion_rules; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_product_promotion_rules (
    product_id bigint,
    promotion_rule_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_product_promotion_rules OWNER TO retebio;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_product_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_promotion_rules_id_seq OWNER TO retebio;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_product_promotion_rules_id_seq OWNED BY public.spree_product_promotion_rules.id;


--
-- Name: spree_product_properties; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_product_properties (
    id integer NOT NULL,
    value character varying,
    product_id bigint,
    property_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "position" integer DEFAULT 0,
    show_property boolean DEFAULT true,
    filter_param character varying
);


ALTER TABLE public.spree_product_properties OWNER TO retebio;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_product_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_properties_id_seq OWNER TO retebio;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_product_properties_id_seq OWNED BY public.spree_product_properties.id;


--
-- Name: spree_products; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_products (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description text,
    available_on timestamp without time zone,
    deleted_at timestamp without time zone,
    slug character varying,
    meta_description text,
    meta_keywords character varying,
    tax_category_id bigint,
    shipping_category_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    promotionable boolean DEFAULT true,
    meta_title character varying,
    discontinue_on timestamp without time zone
);


ALTER TABLE public.spree_products OWNER TO retebio;

--
-- Name: spree_products_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_id_seq OWNER TO retebio;

--
-- Name: spree_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_products_id_seq OWNED BY public.spree_products.id;


--
-- Name: spree_products_stores; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_products_stores (
    id bigint NOT NULL,
    product_id bigint,
    store_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_products_stores OWNER TO retebio;

--
-- Name: spree_products_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_products_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_stores_id_seq OWNER TO retebio;

--
-- Name: spree_products_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_products_stores_id_seq OWNED BY public.spree_products_stores.id;


--
-- Name: spree_products_taxons; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_products_taxons (
    product_id bigint,
    taxon_id bigint,
    id integer NOT NULL,
    "position" integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_products_taxons OWNER TO retebio;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_products_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_taxons_id_seq OWNER TO retebio;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_products_taxons_id_seq OWNED BY public.spree_products_taxons.id;


--
-- Name: spree_promotion_action_line_items; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotion_action_line_items (
    id integer NOT NULL,
    promotion_action_id bigint,
    variant_id bigint,
    quantity integer DEFAULT 1,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_promotion_action_line_items OWNER TO retebio;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotion_action_line_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_action_line_items_id_seq OWNER TO retebio;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotion_action_line_items_id_seq OWNED BY public.spree_promotion_action_line_items.id;


--
-- Name: spree_promotion_actions; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotion_actions (
    id integer NOT NULL,
    promotion_id bigint,
    "position" integer,
    type character varying,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_promotion_actions OWNER TO retebio;

--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotion_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_actions_id_seq OWNER TO retebio;

--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotion_actions_id_seq OWNED BY public.spree_promotion_actions.id;


--
-- Name: spree_promotion_categories; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotion_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    code character varying
);


ALTER TABLE public.spree_promotion_categories OWNER TO retebio;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotion_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_categories_id_seq OWNER TO retebio;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotion_categories_id_seq OWNED BY public.spree_promotion_categories.id;


--
-- Name: spree_promotion_rule_taxons; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotion_rule_taxons (
    id integer NOT NULL,
    taxon_id bigint,
    promotion_rule_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_promotion_rule_taxons OWNER TO retebio;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotion_rule_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rule_taxons_id_seq OWNER TO retebio;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotion_rule_taxons_id_seq OWNED BY public.spree_promotion_rule_taxons.id;


--
-- Name: spree_promotion_rule_users; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotion_rule_users (
    user_id bigint,
    promotion_rule_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_promotion_rule_users OWNER TO retebio;

--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotion_rule_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rule_users_id_seq OWNER TO retebio;

--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotion_rule_users_id_seq OWNED BY public.spree_promotion_rule_users.id;


--
-- Name: spree_promotion_rules; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotion_rules (
    id integer NOT NULL,
    promotion_id bigint,
    user_id bigint,
    product_group_id bigint,
    type character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    code character varying,
    preferences text
);


ALTER TABLE public.spree_promotion_rules OWNER TO retebio;

--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rules_id_seq OWNER TO retebio;

--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotion_rules_id_seq OWNED BY public.spree_promotion_rules.id;


--
-- Name: spree_promotions; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotions (
    id integer NOT NULL,
    description character varying,
    expires_at timestamp without time zone,
    starts_at timestamp without time zone,
    name character varying,
    type character varying,
    usage_limit integer,
    match_policy character varying DEFAULT 'all'::character varying,
    code character varying,
    advertise boolean DEFAULT false,
    path character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    promotion_category_id bigint
);


ALTER TABLE public.spree_promotions OWNER TO retebio;

--
-- Name: spree_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotions_id_seq OWNER TO retebio;

--
-- Name: spree_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotions_id_seq OWNED BY public.spree_promotions.id;


--
-- Name: spree_promotions_stores; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_promotions_stores (
    id bigint NOT NULL,
    promotion_id bigint,
    store_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_promotions_stores OWNER TO retebio;

--
-- Name: spree_promotions_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_promotions_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotions_stores_id_seq OWNER TO retebio;

--
-- Name: spree_promotions_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_promotions_stores_id_seq OWNED BY public.spree_promotions_stores.id;


--
-- Name: spree_properties; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_properties (
    id integer NOT NULL,
    name character varying,
    presentation character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    filterable boolean DEFAULT false NOT NULL,
    filter_param character varying
);


ALTER TABLE public.spree_properties OWNER TO retebio;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_properties_id_seq OWNER TO retebio;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_properties_id_seq OWNED BY public.spree_properties.id;


--
-- Name: spree_property_prototypes; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_property_prototypes (
    prototype_id bigint,
    property_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_property_prototypes OWNER TO retebio;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_property_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_property_prototypes_id_seq OWNER TO retebio;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_property_prototypes_id_seq OWNED BY public.spree_property_prototypes.id;


--
-- Name: spree_prototype_taxons; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_prototype_taxons (
    id integer NOT NULL,
    taxon_id bigint,
    prototype_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_prototype_taxons OWNER TO retebio;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_prototype_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototype_taxons_id_seq OWNER TO retebio;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_prototype_taxons_id_seq OWNED BY public.spree_prototype_taxons.id;


--
-- Name: spree_prototypes; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_prototypes (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_prototypes OWNER TO retebio;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototypes_id_seq OWNER TO retebio;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_prototypes_id_seq OWNED BY public.spree_prototypes.id;


--
-- Name: spree_refund_reasons; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_refund_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_refund_reasons OWNER TO retebio;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_refund_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_refund_reasons_id_seq OWNER TO retebio;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_refund_reasons_id_seq OWNED BY public.spree_refund_reasons.id;


--
-- Name: spree_refunds; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_refunds (
    id integer NOT NULL,
    payment_id bigint,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    transaction_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    refund_reason_id bigint,
    reimbursement_id bigint
);


ALTER TABLE public.spree_refunds OWNER TO retebio;

--
-- Name: spree_refunds_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_refunds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_refunds_id_seq OWNER TO retebio;

--
-- Name: spree_refunds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_refunds_id_seq OWNED BY public.spree_refunds.id;


--
-- Name: spree_reimbursement_credits; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_reimbursement_credits (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    reimbursement_id bigint,
    creditable_id bigint,
    creditable_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_reimbursement_credits OWNER TO retebio;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_reimbursement_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_credits_id_seq OWNER TO retebio;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_reimbursement_credits_id_seq OWNED BY public.spree_reimbursement_credits.id;


--
-- Name: spree_reimbursement_types; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_reimbursement_types (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    type character varying
);


ALTER TABLE public.spree_reimbursement_types OWNER TO retebio;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_reimbursement_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_types_id_seq OWNER TO retebio;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_reimbursement_types_id_seq OWNED BY public.spree_reimbursement_types.id;


--
-- Name: spree_reimbursements; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_reimbursements (
    id integer NOT NULL,
    number character varying,
    reimbursement_status character varying,
    customer_return_id bigint,
    order_id bigint,
    total numeric(10,2),
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_reimbursements OWNER TO retebio;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_reimbursements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursements_id_seq OWNER TO retebio;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_reimbursements_id_seq OWNED BY public.spree_reimbursements.id;


--
-- Name: spree_return_authorization_reasons; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_return_authorization_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_return_authorization_reasons OWNER TO retebio;

--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_return_authorization_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_authorization_reasons_id_seq OWNER TO retebio;

--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_return_authorization_reasons_id_seq OWNED BY public.spree_return_authorization_reasons.id;


--
-- Name: spree_return_authorizations; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_return_authorizations (
    id integer NOT NULL,
    number character varying,
    state character varying,
    order_id bigint,
    memo text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    stock_location_id bigint,
    return_authorization_reason_id bigint
);


ALTER TABLE public.spree_return_authorizations OWNER TO retebio;

--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_return_authorizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_authorizations_id_seq OWNER TO retebio;

--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_return_authorizations_id_seq OWNED BY public.spree_return_authorizations.id;


--
-- Name: spree_return_items; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_return_items (
    id integer NOT NULL,
    return_authorization_id bigint,
    inventory_unit_id bigint,
    exchange_variant_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    pre_tax_amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    included_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    reception_status character varying,
    acceptance_status character varying,
    customer_return_id bigint,
    reimbursement_id bigint,
    acceptance_status_errors text,
    preferred_reimbursement_type_id bigint,
    override_reimbursement_type_id bigint,
    resellable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.spree_return_items OWNER TO retebio;

--
-- Name: spree_return_items_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_return_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_items_id_seq OWNER TO retebio;

--
-- Name: spree_return_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_return_items_id_seq OWNED BY public.spree_return_items.id;


--
-- Name: spree_role_users; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_role_users (
    role_id bigint,
    user_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_role_users OWNER TO retebio;

--
-- Name: spree_role_users_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_role_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_role_users_id_seq OWNER TO retebio;

--
-- Name: spree_role_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_role_users_id_seq OWNED BY public.spree_role_users.id;


--
-- Name: spree_roles; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_roles (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_roles OWNER TO retebio;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_roles_id_seq OWNER TO retebio;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_roles_id_seq OWNED BY public.spree_roles.id;


--
-- Name: spree_shipments; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_shipments (
    id integer NOT NULL,
    tracking character varying,
    number character varying,
    cost numeric(10,2) DEFAULT 0.0,
    shipped_at timestamp without time zone,
    order_id bigint,
    address_id bigint,
    state character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    stock_location_id bigint,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    pre_tax_amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_shipments OWNER TO retebio;

--
-- Name: spree_shipments_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_shipments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipments_id_seq OWNER TO retebio;

--
-- Name: spree_shipments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_shipments_id_seq OWNED BY public.spree_shipments.id;


--
-- Name: spree_shipping_categories; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_shipping_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_shipping_categories OWNER TO retebio;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_shipping_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_categories_id_seq OWNER TO retebio;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_shipping_categories_id_seq OWNED BY public.spree_shipping_categories.id;


--
-- Name: spree_shipping_method_categories; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_shipping_method_categories (
    id integer NOT NULL,
    shipping_method_id bigint NOT NULL,
    shipping_category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_shipping_method_categories OWNER TO retebio;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_shipping_method_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_categories_id_seq OWNER TO retebio;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_shipping_method_categories_id_seq OWNED BY public.spree_shipping_method_categories.id;


--
-- Name: spree_shipping_method_zones; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_shipping_method_zones (
    shipping_method_id bigint,
    zone_id bigint,
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_shipping_method_zones OWNER TO retebio;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_shipping_method_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_zones_id_seq OWNER TO retebio;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_shipping_method_zones_id_seq OWNED BY public.spree_shipping_method_zones.id;


--
-- Name: spree_shipping_methods; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_shipping_methods (
    id integer NOT NULL,
    name character varying,
    display_on character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    tracking_url character varying,
    admin_name character varying,
    tax_category_id bigint,
    code character varying
);


ALTER TABLE public.spree_shipping_methods OWNER TO retebio;

--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_shipping_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_methods_id_seq OWNER TO retebio;

--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_shipping_methods_id_seq OWNED BY public.spree_shipping_methods.id;


--
-- Name: spree_shipping_rates; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_shipping_rates (
    id integer NOT NULL,
    shipment_id bigint,
    shipping_method_id bigint,
    selected boolean DEFAULT false,
    cost numeric(8,2) DEFAULT 0.0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    tax_rate_id bigint
);


ALTER TABLE public.spree_shipping_rates OWNER TO retebio;

--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_shipping_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_rates_id_seq OWNER TO retebio;

--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_shipping_rates_id_seq OWNED BY public.spree_shipping_rates.id;


--
-- Name: spree_state_changes; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_state_changes (
    id integer NOT NULL,
    name character varying,
    previous_state character varying,
    stateful_id bigint,
    user_id bigint,
    stateful_type character varying,
    next_state character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_state_changes OWNER TO retebio;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_state_changes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_state_changes_id_seq OWNER TO retebio;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_state_changes_id_seq OWNED BY public.spree_state_changes.id;


--
-- Name: spree_states; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_states (
    id integer NOT NULL,
    name character varying,
    abbr character varying,
    country_id bigint,
    updated_at timestamp without time zone,
    created_at timestamp without time zone
);


ALTER TABLE public.spree_states OWNER TO retebio;

--
-- Name: spree_states_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_states_id_seq OWNER TO retebio;

--
-- Name: spree_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_states_id_seq OWNED BY public.spree_states.id;


--
-- Name: spree_stock_items; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_stock_items (
    id integer NOT NULL,
    stock_location_id bigint,
    variant_id bigint,
    count_on_hand integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    backorderable boolean DEFAULT false,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_stock_items OWNER TO retebio;

--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_stock_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_items_id_seq OWNER TO retebio;

--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_stock_items_id_seq OWNED BY public.spree_stock_items.id;


--
-- Name: spree_stock_locations; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_stock_locations (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    address1 character varying,
    address2 character varying,
    city character varying,
    state_id bigint,
    state_name character varying,
    country_id bigint,
    zipcode character varying,
    phone character varying,
    active boolean DEFAULT true,
    backorderable_default boolean DEFAULT false,
    propagate_all_variants boolean DEFAULT true,
    admin_name character varying
);


ALTER TABLE public.spree_stock_locations OWNER TO retebio;

--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_locations_id_seq OWNER TO retebio;

--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_stock_locations_id_seq OWNED BY public.spree_stock_locations.id;


--
-- Name: spree_stock_movements; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_stock_movements (
    id integer NOT NULL,
    stock_item_id bigint,
    quantity integer DEFAULT 0,
    action character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    originator_type character varying,
    originator_id bigint
);


ALTER TABLE public.spree_stock_movements OWNER TO retebio;

--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_stock_movements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_movements_id_seq OWNER TO retebio;

--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_stock_movements_id_seq OWNED BY public.spree_stock_movements.id;


--
-- Name: spree_stock_transfers; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_stock_transfers (
    id integer NOT NULL,
    type character varying,
    reference character varying,
    source_location_id bigint,
    destination_location_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    number character varying
);


ALTER TABLE public.spree_stock_transfers OWNER TO retebio;

--
-- Name: spree_stock_transfers_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_stock_transfers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_transfers_id_seq OWNER TO retebio;

--
-- Name: spree_stock_transfers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_stock_transfers_id_seq OWNED BY public.spree_stock_transfers.id;


--
-- Name: spree_store_credit_categories; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_store_credit_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_categories OWNER TO retebio;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_store_credit_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_categories_id_seq OWNER TO retebio;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_store_credit_categories_id_seq OWNED BY public.spree_store_credit_categories.id;


--
-- Name: spree_store_credit_events; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_store_credit_events (
    id integer NOT NULL,
    store_credit_id bigint NOT NULL,
    action character varying NOT NULL,
    amount numeric(8,2),
    authorization_code character varying NOT NULL,
    user_total_amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    originator_id bigint,
    originator_type character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_events OWNER TO retebio;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_store_credit_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_events_id_seq OWNER TO retebio;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_store_credit_events_id_seq OWNED BY public.spree_store_credit_events.id;


--
-- Name: spree_store_credit_types; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_store_credit_types (
    id integer NOT NULL,
    name character varying,
    priority integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_types OWNER TO retebio;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_store_credit_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_types_id_seq OWNER TO retebio;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_store_credit_types_id_seq OWNED BY public.spree_store_credit_types.id;


--
-- Name: spree_store_credits; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_store_credits (
    id integer NOT NULL,
    user_id bigint,
    category_id bigint,
    created_by_id bigint,
    amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    amount_used numeric(8,2) DEFAULT 0.0 NOT NULL,
    memo text,
    deleted_at timestamp without time zone,
    currency character varying,
    amount_authorized numeric(8,2) DEFAULT 0.0 NOT NULL,
    originator_id bigint,
    originator_type character varying,
    type_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    store_id bigint
);


ALTER TABLE public.spree_store_credits OWNER TO retebio;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_store_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credits_id_seq OWNER TO retebio;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_store_credits_id_seq OWNED BY public.spree_store_credits.id;


--
-- Name: spree_stores; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_stores (
    id integer NOT NULL,
    name character varying,
    url character varying,
    meta_description text,
    meta_keywords text,
    seo_title character varying,
    mail_from_address character varying,
    default_currency character varying,
    code character varying,
    "default" boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    supported_currencies character varying,
    facebook character varying,
    twitter character varying,
    instagram character varying,
    default_locale character varying,
    customer_support_email character varying,
    default_country_id bigint,
    description text,
    address text,
    contact_phone character varying,
    new_order_notifications_email character varying,
    checkout_zone_id bigint,
    seo_robots character varying,
    supported_locales character varying,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_stores OWNER TO retebio;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stores_id_seq OWNER TO retebio;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_stores_id_seq OWNED BY public.spree_stores.id;


--
-- Name: spree_tax_categories; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_tax_categories (
    id integer NOT NULL,
    name character varying,
    description character varying,
    is_default boolean DEFAULT false,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    tax_code character varying
);


ALTER TABLE public.spree_tax_categories OWNER TO retebio;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_tax_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_categories_id_seq OWNER TO retebio;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_tax_categories_id_seq OWNED BY public.spree_tax_categories.id;


--
-- Name: spree_tax_rates; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_tax_rates (
    id integer NOT NULL,
    amount numeric(8,5),
    zone_id bigint,
    tax_category_id bigint,
    included_in_price boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying,
    show_rate_in_label boolean DEFAULT true,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_tax_rates OWNER TO retebio;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_tax_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_rates_id_seq OWNER TO retebio;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_tax_rates_id_seq OWNED BY public.spree_tax_rates.id;


--
-- Name: spree_taxonomies; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_taxonomies (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "position" integer DEFAULT 0,
    store_id bigint
);


ALTER TABLE public.spree_taxonomies OWNER TO retebio;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_taxonomies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taxonomies_id_seq OWNER TO retebio;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_taxonomies_id_seq OWNED BY public.spree_taxonomies.id;


--
-- Name: spree_taxons; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_taxons (
    id integer NOT NULL,
    parent_id bigint,
    "position" integer DEFAULT 0,
    name character varying NOT NULL,
    permalink character varying,
    taxonomy_id bigint,
    lft bigint,
    rgt bigint,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    meta_title character varying,
    meta_description character varying,
    meta_keywords character varying,
    depth integer,
    hide_from_nav boolean DEFAULT false
);


ALTER TABLE public.spree_taxons OWNER TO retebio;

--
-- Name: spree_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taxons_id_seq OWNER TO retebio;

--
-- Name: spree_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_taxons_id_seq OWNED BY public.spree_taxons.id;


--
-- Name: spree_trackers; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_trackers (
    id integer NOT NULL,
    analytics_id character varying,
    active boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    engine integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.spree_trackers OWNER TO retebio;

--
-- Name: spree_trackers_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_trackers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_trackers_id_seq OWNER TO retebio;

--
-- Name: spree_trackers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_trackers_id_seq OWNED BY public.spree_trackers.id;


--
-- Name: spree_users; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_users (
    id integer NOT NULL,
    encrypted_password character varying(128),
    password_salt character varying(128),
    email character varying,
    remember_token character varying,
    persistence_token character varying,
    reset_password_token character varying,
    perishable_token character varying,
    sign_in_count integer DEFAULT 0 NOT NULL,
    failed_attempts integer DEFAULT 0 NOT NULL,
    last_request_at timestamp without time zone,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    login character varying,
    ship_address_id bigint,
    bill_address_id bigint,
    authentication_token character varying,
    unlock_token character varying,
    locked_at timestamp without time zone,
    reset_password_sent_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    spree_api_key character varying(48),
    remember_created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone
);


ALTER TABLE public.spree_users OWNER TO retebio;

--
-- Name: spree_users_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_users_id_seq OWNER TO retebio;

--
-- Name: spree_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_users_id_seq OWNED BY public.spree_users.id;


--
-- Name: spree_variants; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_variants (
    id integer NOT NULL,
    sku character varying DEFAULT ''::character varying NOT NULL,
    weight numeric(8,2) DEFAULT 0.0,
    height numeric(8,2),
    width numeric(8,2),
    depth numeric(8,2),
    deleted_at timestamp without time zone,
    is_master boolean DEFAULT false,
    product_id bigint,
    cost_price numeric(10,2),
    "position" integer,
    cost_currency character varying,
    track_inventory boolean DEFAULT true,
    tax_category_id bigint,
    updated_at timestamp without time zone NOT NULL,
    discontinue_on timestamp without time zone,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_variants OWNER TO retebio;

--
-- Name: spree_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_variants_id_seq OWNER TO retebio;

--
-- Name: spree_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_variants_id_seq OWNED BY public.spree_variants.id;


--
-- Name: spree_zone_members; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_zone_members (
    id integer NOT NULL,
    zoneable_type character varying,
    zoneable_id bigint,
    zone_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_zone_members OWNER TO retebio;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_zone_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zone_members_id_seq OWNER TO retebio;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_zone_members_id_seq OWNED BY public.spree_zone_members.id;


--
-- Name: spree_zones; Type: TABLE; Schema: public; Owner: retebio
--

CREATE TABLE public.spree_zones (
    id integer NOT NULL,
    name character varying,
    description character varying,
    default_tax boolean DEFAULT false,
    zone_members_count integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    kind character varying DEFAULT 'state'::character varying
);


ALTER TABLE public.spree_zones OWNER TO retebio;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: retebio
--

CREATE SEQUENCE public.spree_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zones_id_seq OWNER TO retebio;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: retebio
--

ALTER SEQUENCE public.spree_zones_id_seq OWNED BY public.spree_zones.id;


--
-- Name: action_mailbox_inbound_emails id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails ALTER COLUMN id SET DEFAULT nextval('public.action_mailbox_inbound_emails_id_seq'::regclass);


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: spree_addresses id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_addresses ALTER COLUMN id SET DEFAULT nextval('public.spree_addresses_id_seq'::regclass);


--
-- Name: spree_adjustments id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_adjustments ALTER COLUMN id SET DEFAULT nextval('public.spree_adjustments_id_seq'::regclass);


--
-- Name: spree_assets id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_assets ALTER COLUMN id SET DEFAULT nextval('public.spree_assets_id_seq'::regclass);


--
-- Name: spree_calculators id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_calculators ALTER COLUMN id SET DEFAULT nextval('public.spree_calculators_id_seq'::regclass);


--
-- Name: spree_checks id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_checks ALTER COLUMN id SET DEFAULT nextval('public.spree_checks_id_seq'::regclass);


--
-- Name: spree_cms_pages id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_cms_pages ALTER COLUMN id SET DEFAULT nextval('public.spree_cms_pages_id_seq'::regclass);


--
-- Name: spree_cms_sections id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_cms_sections ALTER COLUMN id SET DEFAULT nextval('public.spree_cms_sections_id_seq'::regclass);


--
-- Name: spree_countries id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_countries ALTER COLUMN id SET DEFAULT nextval('public.spree_countries_id_seq'::regclass);


--
-- Name: spree_credit_cards id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_credit_cards ALTER COLUMN id SET DEFAULT nextval('public.spree_credit_cards_id_seq'::regclass);


--
-- Name: spree_customer_returns id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_customer_returns ALTER COLUMN id SET DEFAULT nextval('public.spree_customer_returns_id_seq'::regclass);


--
-- Name: spree_gateways id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_gateways ALTER COLUMN id SET DEFAULT nextval('public.spree_gateways_id_seq'::regclass);


--
-- Name: spree_inventory_units id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_inventory_units ALTER COLUMN id SET DEFAULT nextval('public.spree_inventory_units_id_seq'::regclass);


--
-- Name: spree_line_items id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_line_items_id_seq'::regclass);


--
-- Name: spree_log_entries id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_log_entries ALTER COLUMN id SET DEFAULT nextval('public.spree_log_entries_id_seq'::regclass);


--
-- Name: spree_menu_items id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_menu_items ALTER COLUMN id SET DEFAULT nextval('public.spree_menu_items_id_seq'::regclass);


--
-- Name: spree_menus id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_menus ALTER COLUMN id SET DEFAULT nextval('public.spree_menus_id_seq'::regclass);


--
-- Name: spree_oauth_access_grants id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_access_grants ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_access_grants_id_seq'::regclass);


--
-- Name: spree_oauth_access_tokens id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_access_tokens_id_seq'::regclass);


--
-- Name: spree_oauth_applications id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_applications ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_applications_id_seq'::regclass);


--
-- Name: spree_option_type_prototypes id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_type_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_option_type_prototypes_id_seq'::regclass);


--
-- Name: spree_option_types id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_option_types_id_seq'::regclass);


--
-- Name: spree_option_value_variants id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_value_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_option_value_variants_id_seq'::regclass);


--
-- Name: spree_option_values id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_values ALTER COLUMN id SET DEFAULT nextval('public.spree_option_values_id_seq'::regclass);


--
-- Name: spree_order_promotions id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_order_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_order_promotions_id_seq'::regclass);


--
-- Name: spree_orders id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_orders ALTER COLUMN id SET DEFAULT nextval('public.spree_orders_id_seq'::regclass);


--
-- Name: spree_payment_capture_events id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_payment_capture_events ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_capture_events_id_seq'::regclass);


--
-- Name: spree_payment_methods id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_payment_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_methods_id_seq'::regclass);


--
-- Name: spree_payments id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_payments ALTER COLUMN id SET DEFAULT nextval('public.spree_payments_id_seq'::regclass);


--
-- Name: spree_preferences id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_preferences ALTER COLUMN id SET DEFAULT nextval('public.spree_preferences_id_seq'::regclass);


--
-- Name: spree_prices id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_prices ALTER COLUMN id SET DEFAULT nextval('public.spree_prices_id_seq'::regclass);


--
-- Name: spree_product_option_types id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_product_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_product_option_types_id_seq'::regclass);


--
-- Name: spree_product_promotion_rules id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_product_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_product_promotion_rules_id_seq'::regclass);


--
-- Name: spree_product_properties id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_product_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_product_properties_id_seq'::regclass);


--
-- Name: spree_products id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_products ALTER COLUMN id SET DEFAULT nextval('public.spree_products_id_seq'::regclass);


--
-- Name: spree_products_stores id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_products_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_products_stores_id_seq'::regclass);


--
-- Name: spree_products_taxons id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_products_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_products_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_action_line_items id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_action_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_action_line_items_id_seq'::regclass);


--
-- Name: spree_promotion_actions id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_actions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_actions_id_seq'::regclass);


--
-- Name: spree_promotion_categories id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_categories_id_seq'::regclass);


--
-- Name: spree_promotion_rule_taxons id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_rule_users id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_rule_users ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_users_id_seq'::regclass);


--
-- Name: spree_promotion_rules id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_id_seq'::regclass);


--
-- Name: spree_promotions id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotions_id_seq'::regclass);


--
-- Name: spree_promotions_stores id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotions_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_promotions_stores_id_seq'::regclass);


--
-- Name: spree_properties id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_properties_id_seq'::regclass);


--
-- Name: spree_property_prototypes id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_property_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_property_prototypes_id_seq'::regclass);


--
-- Name: spree_prototype_taxons id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_prototype_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_prototype_taxons_id_seq'::regclass);


--
-- Name: spree_prototypes id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_prototypes_id_seq'::regclass);


--
-- Name: spree_refund_reasons id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_refund_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_refund_reasons_id_seq'::regclass);


--
-- Name: spree_refunds id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_refunds ALTER COLUMN id SET DEFAULT nextval('public.spree_refunds_id_seq'::regclass);


--
-- Name: spree_reimbursement_credits id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_reimbursement_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_credits_id_seq'::regclass);


--
-- Name: spree_reimbursement_types id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_reimbursement_types ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_types_id_seq'::regclass);


--
-- Name: spree_reimbursements id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_reimbursements ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursements_id_seq'::regclass);


--
-- Name: spree_return_authorization_reasons id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_return_authorization_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_return_authorization_reasons_id_seq'::regclass);


--
-- Name: spree_return_authorizations id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_return_authorizations ALTER COLUMN id SET DEFAULT nextval('public.spree_return_authorizations_id_seq'::regclass);


--
-- Name: spree_return_items id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_return_items ALTER COLUMN id SET DEFAULT nextval('public.spree_return_items_id_seq'::regclass);


--
-- Name: spree_role_users id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_role_users ALTER COLUMN id SET DEFAULT nextval('public.spree_role_users_id_seq'::regclass);


--
-- Name: spree_roles id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_roles ALTER COLUMN id SET DEFAULT nextval('public.spree_roles_id_seq'::regclass);


--
-- Name: spree_shipments id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipments ALTER COLUMN id SET DEFAULT nextval('public.spree_shipments_id_seq'::regclass);


--
-- Name: spree_shipping_categories id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_categories id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_method_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_zones id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_method_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_zones_id_seq'::regclass);


--
-- Name: spree_shipping_methods id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_methods_id_seq'::regclass);


--
-- Name: spree_shipping_rates id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_rates_id_seq'::regclass);


--
-- Name: spree_state_changes id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_state_changes ALTER COLUMN id SET DEFAULT nextval('public.spree_state_changes_id_seq'::regclass);


--
-- Name: spree_states id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_states ALTER COLUMN id SET DEFAULT nextval('public.spree_states_id_seq'::regclass);


--
-- Name: spree_stock_items id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_items ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_items_id_seq'::regclass);


--
-- Name: spree_stock_locations id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_locations_id_seq'::regclass);


--
-- Name: spree_stock_movements id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_movements ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_movements_id_seq'::regclass);


--
-- Name: spree_stock_transfers id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_transfers ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_transfers_id_seq'::regclass);


--
-- Name: spree_store_credit_categories id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credit_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_categories_id_seq'::regclass);


--
-- Name: spree_store_credit_events id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credit_events ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_events_id_seq'::regclass);


--
-- Name: spree_store_credit_types id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credit_types ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_types_id_seq'::regclass);


--
-- Name: spree_store_credits id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credits_id_seq'::regclass);


--
-- Name: spree_stores id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_stores_id_seq'::regclass);


--
-- Name: spree_tax_categories id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_tax_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_categories_id_seq'::regclass);


--
-- Name: spree_tax_rates id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_tax_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_rates_id_seq'::regclass);


--
-- Name: spree_taxonomies id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_taxonomies ALTER COLUMN id SET DEFAULT nextval('public.spree_taxonomies_id_seq'::regclass);


--
-- Name: spree_taxons id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_taxons_id_seq'::regclass);


--
-- Name: spree_trackers id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_trackers ALTER COLUMN id SET DEFAULT nextval('public.spree_trackers_id_seq'::regclass);


--
-- Name: spree_users id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_users ALTER COLUMN id SET DEFAULT nextval('public.spree_users_id_seq'::regclass);


--
-- Name: spree_variants id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_variants_id_seq'::regclass);


--
-- Name: spree_zone_members id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_zone_members ALTER COLUMN id SET DEFAULT nextval('public.spree_zone_members_id_seq'::regclass);


--
-- Name: spree_zones id; Type: DEFAULT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_zones_id_seq'::regclass);


--
-- Data for Name: action_mailbox_inbound_emails; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.action_mailbox_inbound_emails (id, status, message_id, message_checksum, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	logo	Spree::Store	1	1	2021-10-17 20:22:29.444064
2	image	ActiveStorage::VariantRecord	1	2	2021-10-17 20:23:05.249635
3	attachment	Spree::Asset	1	3	2021-10-17 22:03:15.66287
4	image	ActiveStorage::VariantRecord	2	4	2021-10-17 22:03:16.26084
5	image	ActiveStorage::VariantRecord	3	5	2021-10-17 22:05:59.390446
6	attachment	Spree::Asset	2	6	2021-10-17 22:06:44.848877
7	image	ActiveStorage::VariantRecord	4	7	2021-10-17 22:06:45.527563
8	image	ActiveStorage::VariantRecord	5	8	2021-10-17 22:06:50.425119
9	attachment	Spree::Asset	3	9	2021-10-18 19:42:16.422828
10	attachment	Spree::Asset	4	10	2021-10-18 19:49:55.565749
11	image	ActiveStorage::VariantRecord	6	11	2021-10-18 19:58:18.697039
12	image	ActiveStorage::VariantRecord	7	12	2021-10-18 19:59:29.6938
13	image	ActiveStorage::VariantRecord	8	13	2021-10-18 20:01:31.335046
14	image	ActiveStorage::VariantRecord	9	14	2021-10-18 20:01:43.522673
15	image	ActiveStorage::VariantRecord	10	15	2021-10-18 20:01:43.584665
16	image	ActiveStorage::VariantRecord	11	16	2021-10-18 20:01:43.741164
17	image	ActiveStorage::VariantRecord	12	17	2021-10-18 20:02:54.932621
18	image	ActiveStorage::VariantRecord	13	18	2021-10-18 20:02:54.935889
19	image	ActiveStorage::VariantRecord	14	19	2021-10-18 20:02:55.106964
20	image_one	Spree::CmsSection	1	20	2021-10-18 20:29:50.563729
21	image	ActiveStorage::VariantRecord	15	21	2021-10-18 20:29:51.375954
22	image	ActiveStorage::VariantRecord	16	22	2021-10-18 20:29:58.130745
23	image_one	Spree::CmsSection	2	23	2021-10-18 20:35:50.476247
25	image	ActiveStorage::VariantRecord	17	25	2021-10-18 20:35:51.153013
27	image	ActiveStorage::VariantRecord	19	27	2021-10-18 20:35:56.91314
29	image_two	Spree::CmsSection	2	29	2021-10-18 20:40:51.699298
30	image	ActiveStorage::VariantRecord	21	30	2021-10-18 20:40:52.279945
31	image	ActiveStorage::VariantRecord	22	31	2021-10-18 20:40:57.737088
32	image	ActiveStorage::VariantRecord	24	32	2021-10-20 17:44:58.734756
33	image	ActiveStorage::VariantRecord	23	33	2021-10-20 17:44:58.751358
34	image	ActiveStorage::VariantRecord	25	34	2021-10-20 17:44:59.312755
35	image	ActiveStorage::VariantRecord	26	35	2021-10-20 17:44:59.86603
36	image	ActiveStorage::VariantRecord	27	36	2021-10-20 17:45:36.73041
37	attachment	Spree::Asset	5	37	2021-10-20 18:02:05.247161
38	image	ActiveStorage::VariantRecord	28	38	2021-10-20 18:02:05.829949
39	image	ActiveStorage::VariantRecord	29	39	2021-10-20 18:02:20.853962
40	image	ActiveStorage::VariantRecord	30	40	2021-10-20 18:02:36.701534
41	image	ActiveStorage::VariantRecord	31	41	2021-10-20 18:02:36.925428
42	image	ActiveStorage::VariantRecord	32	42	2021-10-20 18:02:36.945172
43	image	ActiveStorage::VariantRecord	33	43	2021-10-20 18:14:12.869228
44	image	ActiveStorage::VariantRecord	34	44	2021-10-20 18:55:57.715571
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	5w70156qasl8rt38qe203agiasu3	logo-cc56c9128e2e26bbb39617fe4b3426a028ba48dc51f251b034dbeaf29573ab1b.png	image/png	{"identified":true,"width":240,"height":138,"analyzed":true}	local	40772	pgwVuyIFqWEbFcuRd+4hCw==	2021-10-17 20:22:29.43926
2	tupxqld6kkaz61kc6ql6m9mid1v3	logo-cc56c9128e2e26bbb39617fe4b3426a028ba48dc51f251b034dbeaf29573ab1b.png	image/png	{"identified":true,"width":181,"height":104,"analyzed":true}	local	28792	oXlQruTD3rfdVu2Tu0CDJw==	2021-10-17 20:23:05.245768
3	fpvldrp2yojeeapntsan1lrktcw3	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":240,"height":160,"analyzed":true}	local	30577	FnptH0b+yv4P7tVsVzzk0Q==	2021-10-17 22:03:15.657234
4	dugjswrnlvt5o7lm9rcltmz4262r	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":240,"height":160,"analyzed":true}	local	30583	P82D/TDqkyALF1ykFkdSLQ==	2021-10-17 22:03:16.256925
5	selmz0hdyznhe0dreakluuu87xes	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":100,"height":67,"analyzed":true}	local	25484	H1AoP/y89GstQYtPwWvgcA==	2021-10-17 22:05:59.386697
6	ivl4uitw4nq78i4j5s3fxkuygk93	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":240,"height":162,"analyzed":true}	local	42514	nKv4YshoE4EhPpDuQrClMQ==	2021-10-17 22:06:44.845286
7	fpm2dtablb4wk3g2kr5u9ca4rxpo	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":240,"height":162,"analyzed":true}	local	42965	pIo7Ki5yzmiQ/aKt+1Aa6w==	2021-10-17 22:06:45.523583
8	vqqukz8gcd8y80qqkrbjm2i4pbnd	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":100,"height":68,"analyzed":true}	local	10447	CjzaFNYzblf+eeCWZ8b5pg==	2021-10-17 22:06:50.415223
9	zzh1up7id0asml29xy7t2reqh50p	verdura.jpeg	image/jpeg	{"identified":true,"width":300,"height":168,"analyzed":true}	local	13665	5cAqlmrNcWYxDNSYrCDzLA==	2021-10-18 19:42:16.417743
10	hf93ngx2o7vb2i48mrhdva98habi	verdura.jpeg	image/jpeg	{"identified":true,"width":300,"height":168,"analyzed":true}	local	13665	5cAqlmrNcWYxDNSYrCDzLA==	2021-10-18 19:49:55.561557
11	9jds5gijbk60irm4dydsud6v0zj3	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":240,"height":160,"analyzed":true}	local	30583	P82D/TDqkyALF1ykFkdSLQ==	2021-10-18 19:58:18.692703
12	sn2p4p84depndqr9p662pzr90gc3	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":240,"height":240,"analyzed":true}	local	9259	FziubOB3MNwFaHJKlCCsUQ==	2021-10-18 19:59:29.689907
13	wminrc25wtok0vty7qbhvd2u5qo0	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":240,"height":162,"analyzed":true}	local	42965	pIo7Ki5yzmiQ/aKt+1Aa6w==	2021-10-18 20:01:31.331043
14	abxali774uf5iakyhi5khh5rqac4	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":240,"height":160,"analyzed":true}	local	30583	P82D/TDqkyALF1ykFkdSLQ==	2021-10-18 20:01:43.497969
15	llzwalyu1djkooq2vpsc1zjixzhp	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":240,"height":160,"analyzed":true}	local	30583	P82D/TDqkyALF1ykFkdSLQ==	2021-10-18 20:01:43.572635
16	eddppy5zjyuhlj2u9a3srizper4b	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":160,"height":107,"analyzed":true}	local	27390	VY113FhczNvCx8vXZWqddA==	2021-10-18 20:01:43.72951
18	hqbn68r0szekcl9r8nxu15gl9d7f	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":240,"height":162,"analyzed":true}	local	42965	pIo7Ki5yzmiQ/aKt+1Aa6w==	2021-10-18 20:02:54.928975
17	9wva1tb0mna93c80zuh47fdl8170	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":240,"height":162,"analyzed":true}	local	42965	pIo7Ki5yzmiQ/aKt+1Aa6w==	2021-10-18 20:02:54.924406
19	fj6wuqgzaa9cv1d2vjg71mf0nhfk	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":160,"height":108,"analyzed":true}	local	22052	hM1Oa9qTFEMivthIaAT3MQ==	2021-10-18 20:02:55.102703
20	qzega9cbq0alrqblrz5nkc3b4kq5	Begatti_Giuseppe_1-d1d73f9f.jpeg	image/jpeg	{"identified":true,"width":2600,"height":1463,"analyzed":true}	local	665942	E2c1Bbnf3JSG3XE1I8ySxQ==	2021-10-18 20:29:50.559065
21	qij5ucgunhzxhlz0e88bladvbdxj	Begatti_Giuseppe_1-d1d73f9f.jpeg	image/jpeg	{"identified":true,"width":185,"height":104,"analyzed":true}	local	8434	Tzp6zXSJ16t7QEQ1+tAx5A==	2021-10-18 20:29:51.371937
22	1yfoqm7dso4x3zua2lpmxt9gi163	Begatti_Giuseppe_1-d1d73f9f.jpeg	image/jpeg	{"identified":true,"width":2600,"height":1463,"analyzed":true}	local	658385	GSaYC+VxdqrKF6YoLHZHEQ==	2021-10-18 20:29:58.118007
23	jzuuvbas1fyl8857own6o9lekilq	verdura.jpeg	image/jpeg	{"identified":true,"width":300,"height":168,"analyzed":true}	local	13665	5cAqlmrNcWYxDNSYrCDzLA==	2021-10-18 20:35:50.471617
31	y6dckl5gz4snsci5pbxrxe8bstkl	frutta.jpeg	image/jpeg	{"identified":true,"width":500,"height":334,"analyzed":true}	local	91118	nAI2gewc5XhWofDcKmf/vg==	2021-10-18 20:40:57.7256
25	w6sivqdilh6d8srl9ti5cv037n2c	verdura.jpeg	image/jpeg	{"identified":true,"width":186,"height":104,"analyzed":true}	local	6468	0xZhKa19hD4QLQifdKJA/Q==	2021-10-18 20:35:51.148992
27	ku6rcjtyppdzqa7qnmrhbxzxqsob	verdura.jpeg	image/jpeg	{"identified":true,"width":300,"height":168,"analyzed":true}	local	15768	vJ+b629qi49hmkg02920KA==	2021-10-18 20:35:56.903064
29	2wu37ki5ng3e3fkmyowxdx4i80ej	frutta.jpeg	image/jpeg	{"identified":true,"width":500,"height":334,"analyzed":true}	local	78686	mVz7Crzx65xrwXquNsq8tw==	2021-10-18 20:40:51.695768
30	l20yqxt6bi9cphln344oyl4iorv6	frutta.jpeg	image/jpeg	{"identified":true,"width":156,"height":104,"analyzed":true}	local	15108	t34jc//cArc4iRI6b4zg8w==	2021-10-18 20:40:52.276169
32	diwz6ewznegvoy39vufpnpu9wu4l	frutta.jpeg	image/jpeg	{"identified":true,"width":270,"height":180,"analyzed":true}	local	36812	4so+B98XmHAXfM5PTYL8ig==	2021-10-20 17:44:58.721877
33	5d0udfj3us2acfwjiu421avytukb	verdura.jpeg	image/jpeg	{"identified":true,"width":270,"height":151,"analyzed":true}	local	12588	8cpgmgiRx3/pdEDRjYpbIA==	2021-10-20 17:44:58.738995
34	92hh7oulcvstfpcc3x7cdi7a007d	Begatti_Giuseppe_1-d1d73f9f.jpeg	image/jpeg	{"identified":true,"width":444,"height":250,"analyzed":true}	local	38000	Np7iGgbDyCt9jE/L1hXK/A==	2021-10-20 17:44:59.30265
35	1lez0qu7sf504sb8ywjd4ueoxnxm	ALBICOCCHE.jpeg	image/jpeg	{"identified":true,"width":222,"height":150,"analyzed":true}	local	37954	63kwCM55RVVOaWqvmD63pg==	2021-10-20 17:44:59.861937
36	t535mvszqfkvgycti69m04w5hcb0	Aglio-Bianco.jpeg	image/jpeg	{"identified":true,"width":222,"height":148,"analyzed":true}	local	29949	Q/RuPz8BOeNdJv+K+3HLPQ==	2021-10-20 17:45:36.726847
37	39hbb6d0n9w261ixlxjft4bf5cvp	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1960	rbRIpmG5tIjKid/qeRTdFg==	2021-10-20 18:02:05.243453
38	x0g7xl0f4y5vf36h7l8ajdppdwta	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1958	AN8acwRTZikkDHF6vZ/4sQ==	2021-10-20 18:02:05.825854
39	lkvwqynnf2enq6dtxdxrxaaslmna	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1958	AN8acwRTZikkDHF6vZ/4sQ==	2021-10-20 18:02:20.841228
40	q72fstwtkjr2m8xbkej8z3don07v	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1958	AN8acwRTZikkDHF6vZ/4sQ==	2021-10-20 18:02:36.697495
41	ntjpf3x127387j9gpjylc2e0qfot	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1958	AN8acwRTZikkDHF6vZ/4sQ==	2021-10-20 18:02:36.917753
42	ff9shwd5ni6gcbqyvame8j9ymg24	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1958	AN8acwRTZikkDHF6vZ/4sQ==	2021-10-20 18:02:36.938659
43	azm0v6h960kiipfaqx7486e82cf2	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1958	AN8acwRTZikkDHF6vZ/4sQ==	2021-10-20 18:14:12.860311
44	7jvvvhidp9t95fcbv4z9zl806ufd	DRAGONCELLO.jpg	image/jpeg	{"identified":true,"width":100,"height":100,"analyzed":true}	local	1958	AN8acwRTZikkDHF6vZ/4sQ==	2021-10-20 18:55:57.710455
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	1	bnL8fY5EqVPYBWW4EMoXo95mb7I=
2	3	fwVpW23gRniI1V/Mq72agowuN5s=
3	3	d3LOd3YXIQx0J6s9ItQoFa4APBo=
4	6	fwVpW23gRniI1V/Mq72agowuN5s=
5	6	d3LOd3YXIQx0J6s9ItQoFa4APBo=
6	3	RUwnGkXZ7+xbXU320hsyZOuNjWk=
7	6	aIwPsxbzWyi+XFF6BWoHiboq5Uk=
8	6	RUwnGkXZ7+xbXU320hsyZOuNjWk=
9	3	2ZErL+/6wt3clMThwi8jUG/3J7A=
10	3	3mSfalbIL4Dgfhr+/qDAbmxMZto=
11	3	RrwWxndixYpJ0sERPdWMzq1Rcc0=
12	6	2ZErL+/6wt3clMThwi8jUG/3J7A=
13	6	3mSfalbIL4Dgfhr+/qDAbmxMZto=
14	6	RrwWxndixYpJ0sERPdWMzq1Rcc0=
15	20	fXD/x+mz2oYhRelUmlYWVAi8BcU=
16	20	MnfpqB73CXMmVZdivMNbfRxCfJ4=
17	23	fXD/x+mz2oYhRelUmlYWVAi8BcU=
19	23	Zaoo6RlcDU6OjiBSK4kRYY437ZA=
21	29	fXD/x+mz2oYhRelUmlYWVAi8BcU=
22	29	waOcTVBofB3+EGxRI9ucECn7fcc=
23	23	PWdkWumden53wEhN+pg+MUk6/Hw=
24	29	xBK6dllPRZk07Dcs0vMPoUwswTY=
25	20	Vx+v78UcymXdcCr/VH/EQTUgTAM=
26	6	CyeX4A3t1Wso7xW1LV1gGMjK6sI=
27	3	CyeX4A3t1Wso7xW1LV1gGMjK6sI=
28	37	KgGypHXlwsYSTxSvktWIazLHBDE=
29	37	77ghq7hXEtX2R6nBZbi2k32giq4=
30	37	rfIKDwu3Bqn21ZRjNYSSVHyTEXE=
31	37	ZyU1MpHpsKLWJtImPGwBV/FJv68=
32	37	S6uL5eTqNBJND94p1c1Kanm8/8Y=
33	37	MIsJZdAaZY1HwotuRSxOH9TPZRo=
34	37	05Y1z5WoKwn5+t/01GMr/cfWIgI=
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-10-17 19:57:12.837283	2021-10-17 19:57:12.837283
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at, deleted_at) FROM stdin;
1	aglio-fresco-gal	1	Spree::Product	\N	2021-10-17 22:02:36.20746	\N
2	albicocca-de	2	Spree::Product	\N	2021-10-17 22:06:19.022651	\N
3	verdura	1	Spree::Taxon	\N	2021-10-17 22:09:27.729467	\N
4	verdura/new-node	2	Spree::Taxon	\N	2021-10-17 22:09:39.25793	\N
5	verdura/trasformati	3	Spree::Taxon	\N	2021-10-18 19:38:20.502021	\N
6	verdura/frutta	4	Spree::Taxon	\N	2021-10-18 19:39:00.18704	\N
7	verdura/new-node/orticole	5	Spree::Taxon	\N	2021-10-18 19:52:36.950407	\N
8	verdura/new-node/cereali	6	Spree::Taxon	\N	2021-10-18 19:52:46.361402	\N
9	verdura/new-node/legumi	7	Spree::Taxon	\N	2021-10-18 19:52:51.594447	\N
10	verdura/new-node/tuberi	8	Spree::Taxon	\N	2021-10-18 19:53:04.572964	\N
11	verdura/new-node/ortaggi	9	Spree::Taxon	\N	2021-10-18 19:56:26.120111	2021-10-18 19:56:31.150212
12	promozione	10	Spree::Taxon	\N	2021-10-20 17:21:42.266191	\N
13	rapa-rossa-cm	3	Spree::Product	\N	2021-10-20 18:00:16.937744	\N
14	adrgn-cm	3	Spree::Product	\N	2021-10-20 18:01:14.517609	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.schema_migrations (version) FROM stdin;
20211017195648
20211017195649
20211017195650
20211017195651
20211017195652
20211017195653
20211017195654
20211017195655
20211017195656
20211017195657
20211017195658
20211017195659
20211017195660
20211017195661
20211017195662
20211017195663
20211017195664
20211017195665
20211017195666
20211017195667
20211017195668
20211017195669
20211017195670
20211017195671
20211017195672
20211017195673
20211017195674
20211017195675
20211017195676
20211017195677
20211017195678
20211017195679
20211017195680
20211017195681
20211017195682
20211017195683
20211017195684
20211017195685
20211017195686
20211017195687
20211017195688
20211017195689
20211017195690
20211017195691
20211017195692
20211017195693
20211017195694
20211017195695
20211017195696
20211017195697
20211017195698
20211017195699
20211017195700
20211017195701
20211017195702
20211017195703
20211017195704
20211017195705
20211017195706
20211017195707
20211017195708
20211017195709
20211017195710
20211017195711
20211017195712
20211017195713
20211017195714
20211017195715
20211017195716
20211017195717
20211017195718
20211017195719
20211017195720
20211017195721
20211017195722
20211017195723
20211017195724
20211017195725
20211017195726
20211017195727
20211017195728
20211017195729
20211017195730
20211017195731
20211017195732
20211017195733
20211017195734
20211017195735
20211017195736
20211017195737
20211017195738
20211017195739
20211017195740
20211017195741
20211017195742
20211017195743
20211017195744
20211017195745
20211017195746
20211017195747
20211017195748
20211017195749
20211017195750
20211017195751
20211017195752
20211017195753
20211017195754
20211017195755
20211017195756
20211017195757
20211017195758
20211017195759
20211017195760
20211017195761
20211017195762
20211017195763
20211017195764
20211017195765
20211017195766
20211017195767
20211017195768
20211017195769
20211017195770
20211017195771
20211017195772
20211017195773
20211017195774
20211017195775
20211017195776
20211017195777
20211017195778
20211017195779
20211017195780
20211017195781
20211017195782
20211017195783
20211017195784
20211017195785
20211017195786
20211017195787
20211017195788
20211017195789
20211017195790
20211017195791
20211017195792
20211017195793
20211017195794
20211017195795
20211017195796
20211017195797
20211017195798
20211017195799
20211017195800
20211017195801
20211017195802
20211017195803
20211017195804
20211017195805
20211017195806
20211017195807
20211017195808
20211017195809
20211017195810
20211017195811
20211017195812
20211017195813
20211017195814
20211017195815
20211017195816
20211017195817
20211017195818
20211017195819
20211017195820
20211017195821
20211017195822
20211017195823
20211017195824
20211017195825
20211017195826
20211017195827
20211017195828
20211017195829
20211017195830
20211017195831
20211017195832
20211017195833
20211017195834
20211017195835
20211017195836
20211017195837
20211017195838
20211017195839
20211017195840
20211017195841
20211017195842
20211017195843
20211017195844
20211017195845
20211017195846
20211017195847
20211017195848
20211017195849
20211017195850
20211017195851
20211017195852
20211017195853
20211017195854
20211017195855
20211017195856
20211017195857
20211017195858
20211017195859
20211017195860
20211017195861
20211017195862
20211017195863
20211017195864
20211017195865
20211017195866
20211017195867
20211017195868
20211017195869
20211017195870
20211017195871
20211017195872
20211017195873
20211017195874
20211017195875
20211017195876
20211017195877
20211017195878
20211017195879
20211017195880
20211017195881
20211017195882
20211017195883
20211017195884
20211017195885
20211017195886
20211017195887
20211017195888
20211017195889
20211017195890
20211017195891
20211017195892
20211017195893
20211017195894
20211017195895
20211017195896
20211017195897
20211017195898
20211017195899
20211017195900
20211017195901
20211017195902
20211017195903
20211017195904
20211017195905
20211017195906
20211017195907
20211017195908
20211017195909
20211017195910
20211017195911
20211017195912
20211017195913
20211017195914
20211017195915
20211017195916
20211017195917
20211017195918
20211017195919
20211017195920
20211017195921
20211017195922
20211017195923
20211017195924
20211017195925
20211017195926
20211017195927
20211017195928
20211017195929
20211017195930
20211017195931
20211017195932
20211017195933
20211017195934
20211017195935
20211017195936
20211017195937
20211017195938
20211017195939
20211017195940
20211017195941
20211017195942
20211017195943
20211017195944
20211017195945
20211017195946
20211017195947
20211017195948
20211017195949
20211017195950
20211017195951
20211017195952
20211017195953
20211017195954
20211017195955
20211017195956
20211017195957
20211017195958
20211017195959
20211017195960
20211017195961
20211017195962
20211017195963
20211017195964
20211017195965
20211017195966
20211017195967
20211017195968
20211017195969
20211017195970
20211017195971
20211017195972
20211017195973
20211017195974
20211017195975
\.


--
-- Data for Name: spree_addresses; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_addresses (id, firstname, lastname, address1, address2, city, zipcode, phone, state_name, alternative_phone, company, state_id, country_id, created_at, updated_at, user_id, deleted_at, label) FROM stdin;
1	gabriele	novelli	via fontanese, 24/A	\N	CASTELNOVO DI SOTTO	42024	+393396302529	\N	\N	\N	215	103	2021-10-18 20:04:16.019591	2021-10-18 20:04:16.670728	1	2021-10-20 17:52:07.180918	\N
2	gabriele	novelli	via fontanese 24	\N	castelnovo di sotto	42024	3396302529	\N	\N	\N	213	103	2021-10-20 17:52:55.634728	2021-10-20 17:52:56.295776	1	\N	\N
\.


--
-- Data for Name: spree_adjustments; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_adjustments (id, source_type, source_id, adjustable_type, adjustable_id, amount, label, mandatory, eligible, created_at, updated_at, state, order_id, included) FROM stdin;
\.


--
-- Data for Name: spree_assets; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_assets (id, viewable_type, viewable_id, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) FROM stdin;
1	Spree::Variant	1	\N	\N	\N	1	\N	\N	\N	\N		2021-10-17 22:03:15.632047	2021-10-17 22:03:15.669637
2	Spree::Variant	2	\N	\N	\N	1	\N	\N	\N	\N		2021-10-17 22:06:44.824232	2021-10-17 22:06:44.85218
3	Spree::MenuItem	2	\N	\N	\N	1	\N	\N	Spree::Icon	\N		2021-10-18 19:42:16.397638	2021-10-18 19:44:27.383884
4	Spree::MenuItem	3	\N	\N	\N	1	\N	\N	Spree::Icon	\N	pppp	2021-10-18 19:49:55.54942	2021-10-18 19:50:24.075963
5	Spree::Variant	3	\N	\N	\N	1	\N	\N	\N	\N		2021-10-20 18:02:05.221538	2021-10-20 18:02:05.250609
\.


--
-- Data for Name: spree_calculators; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_calculators (id, type, calculable_type, calculable_id, created_at, updated_at, preferences, deleted_at) FROM stdin;
1	Spree::Calculator::DefaultTax	Spree::TaxRate	1	2021-10-17 20:33:07.576045	2021-10-17 20:33:07.576045	\N	\N
2	Spree::Calculator::DefaultTax	Spree::TaxRate	2	2021-10-17 20:33:34.817354	2021-10-17 20:33:34.817354	\N	\N
3	Spree::Calculator::DefaultTax	Spree::TaxRate	3	2021-10-17 20:33:50.745126	2021-10-17 20:33:50.745126	\N	\N
4	Spree::Calculator::DefaultTax	Spree::TaxRate	4	2021-10-17 20:34:10.579534	2021-10-17 20:34:10.579534	\N	\N
5	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	1	2021-10-17 21:51:29.073637	2021-10-17 21:59:57.086011	---\n:amount: !ruby/object:BigDecimal 18:0.0\n:currency: EUR\n	\N
\.


--
-- Data for Name: spree_checks; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_checks (id, payment_method_id, user_id, account_holder_name, account_holder_type, routing_number, account_number, account_type, status, last_digits, gateway_customer_profile_id, gateway_payment_profile_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: spree_cms_pages; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_cms_pages (id, title, meta_title, content, meta_description, visible, slug, type, locale, deleted_at, store_id, created_at, updated_at) FROM stdin;
1	Homepage		\N		t	\N	Spree::Cms::Pages::Homepage	it	\N	1	2021-10-18 20:06:24.04951	2021-10-20 17:22:53.446197
\.


--
-- Data for Name: spree_cms_sections; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_cms_sections (id, name, content, settings, fit, destination, type, "position", linked_resource_type, linked_resource_id, cms_page_id, created_at, updated_at) FROM stdin;
1	Hero Image	{"title":"Retebio","button_text":""}	{"gutters":"No Gutters"}	Screen	\N	Spree::Cms::Sections::HeroImage	1	Spree::Taxon	\N	1	2021-10-18 20:08:41.993627	2021-10-18 20:29:50.567642
2	Main Taxons	{"link_type_one":"Spree::Taxon","link_type_two":"Spree::Taxon","link_type_three":"Spree::Taxon","title_one":"Verdura","link_one":"verdura/new-node","title_two":"Frutta","link_two":"verdura/frutta","title_three":"Trasformati","link_three":""}	{"layout_style":"Default","display_labels":"Show"}	Screen	\N	Spree::Cms::Sections::ImageGallery	3	\N	\N	1	2021-10-18 20:32:12.437895	2021-10-20 17:19:49.302361
3	Promozione	{"title":"Promozioni","subtitle":"","button_text":"","rte_content":""}	{"gutters":"No Gutters"}	Screen	\N	Spree::Cms::Sections::ProductCarousel	2	Spree::Taxon	10	1	2021-10-20 17:19:06.342798	2021-10-20 17:22:53.443115
\.


--
-- Data for Name: spree_countries; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_countries (id, iso_name, iso, iso3, name, numcode, states_required, updated_at, zipcode_required, created_at) FROM stdin;
1	ANDORRA	AD	AND	Andorra	20	f	2021-10-17 19:57:21.884105	t	2021-10-17 19:57:21.884105
3	AFGHANISTAN	AF	AFG	Afghanistan	4	f	2021-10-17 19:57:21.920081	t	2021-10-17 19:57:21.920081
5	ANGUILLA	AI	AIA	Anguilla	660	f	2021-10-17 19:57:21.955867	t	2021-10-17 19:57:21.955867
6	ALBANIA	AL	ALB	Albania	8	f	2021-10-17 19:57:21.974032	t	2021-10-17 19:57:21.974032
7	ARMENIA	AM	ARM	Armenia	51	f	2021-10-17 19:57:21.989771	t	2021-10-17 19:57:21.989771
9	ARGENTINA	AR	ARG	Argentina	32	f	2021-10-17 19:57:22.031463	t	2021-10-17 19:57:22.031463
10	AMERICAN SAMOA	AS	ASM	American Samoa	16	f	2021-10-17 19:57:22.059869	t	2021-10-17 19:57:22.059869
11	AUSTRIA	AT	AUT	Austria	40	f	2021-10-17 19:57:22.074933	t	2021-10-17 19:57:22.074933
14	AZERBAIJAN	AZ	AZE	Azerbaijan	31	f	2021-10-17 19:57:22.125699	t	2021-10-17 19:57:22.125699
15	BOSNIA AND HERZEGOVINA	BA	BIH	Bosnia and Herzegovina	70	f	2021-10-17 19:57:22.13994	t	2021-10-17 19:57:22.13994
16	BARBADOS	BB	BRB	Barbados	52	f	2021-10-17 19:57:22.154624	t	2021-10-17 19:57:22.154624
17	BANGLADESH	BD	BGD	Bangladesh	50	f	2021-10-17 19:57:22.170012	t	2021-10-17 19:57:22.170012
18	BELGIUM	BE	BEL	Belgium	56	f	2021-10-17 19:57:22.186516	t	2021-10-17 19:57:22.186516
20	BULGARIA	BG	BGR	Bulgaria	100	f	2021-10-17 19:57:22.220188	t	2021-10-17 19:57:22.220188
21	BAHRAIN	BH	BHR	Bahrain	48	f	2021-10-17 19:57:22.234441	t	2021-10-17 19:57:22.234441
24	SAINT BARTHÉLEMY	BL	BLM	Saint Barthélemy	652	f	2021-10-17 19:57:22.282733	t	2021-10-17 19:57:22.282733
26	BRUNEI DARUSSALAM	BN	BRN	Brunei Darussalam	96	f	2021-10-17 19:57:22.311701	t	2021-10-17 19:57:22.311701
28	BONAIRE, SINT EUSTATIUS AND SABA	BQ	BES	Bonaire, Sint Eustatius and Saba	535	f	2021-10-17 19:57:22.342559	t	2021-10-17 19:57:22.342559
31	BHUTAN	BT	BTN	Bhutan	64	f	2021-10-17 19:57:22.384079	t	2021-10-17 19:57:22.384079
33	BELARUS	BY	BLR	Belarus	112	f	2021-10-17 19:57:22.412843	t	2021-10-17 19:57:22.412843
36	COCOS (KEELING) ISLANDS	CC	CCK	Cocos (Keeling) Islands	166	f	2021-10-17 19:57:22.462434	t	2021-10-17 19:57:22.462434
40	SWITZERLAND	CH	CHE	Switzerland	756	f	2021-10-17 19:57:22.522941	t	2021-10-17 19:57:22.522941
43	CHILE	CL	CHL	Chile	152	f	2021-10-17 19:57:22.573016	t	2021-10-17 19:57:22.573016
46	COLOMBIA	CO	COL	Colombia	170	f	2021-10-17 19:57:22.6296	t	2021-10-17 19:57:22.6296
47	COSTA RICA	CR	CRI	Costa Rica	188	f	2021-10-17 19:57:22.645235	t	2021-10-17 19:57:22.645235
48	CUBA	CU	CUB	Cuba	192	f	2021-10-17 19:57:22.66012	t	2021-10-17 19:57:22.66012
49	CABO VERDE	CV	CPV	Cabo Verde	132	f	2021-10-17 19:57:22.674523	t	2021-10-17 19:57:22.674523
50	CURAÇAO	CW	CUW	Curaçao	531	f	2021-10-17 19:57:22.689718	t	2021-10-17 19:57:22.689718
51	CHRISTMAS ISLAND	CX	CXR	Christmas Island	162	f	2021-10-17 19:57:22.705719	t	2021-10-17 19:57:22.705719
52	CYPRUS	CY	CYP	Cyprus	196	f	2021-10-17 19:57:22.72752	t	2021-10-17 19:57:22.72752
53	CZECHIA	CZ	CZE	Czechia	203	f	2021-10-17 19:57:22.742582	t	2021-10-17 19:57:22.742582
54	GERMANY	DE	DEU	Germany	276	f	2021-10-17 19:57:22.758441	t	2021-10-17 19:57:22.758441
56	DENMARK	DK	DNK	Denmark	208	f	2021-10-17 19:57:22.788818	t	2021-10-17 19:57:22.788818
58	DOMINICAN REPUBLIC	DO	DOM	Dominican Republic	214	f	2021-10-17 19:57:22.820056	t	2021-10-17 19:57:22.820056
59	ALGERIA	DZ	DZA	Algeria	12	f	2021-10-17 19:57:22.836715	t	2021-10-17 19:57:22.836715
60	ECUADOR	EC	ECU	Ecuador	218	f	2021-10-17 19:57:22.852694	t	2021-10-17 19:57:22.852694
61	ESTONIA	EE	EST	Estonia	233	f	2021-10-17 19:57:22.869012	t	2021-10-17 19:57:22.869012
62	EGYPT	EG	EGY	Egypt	818	f	2021-10-17 19:57:22.885038	t	2021-10-17 19:57:22.885038
65	ETHIOPIA	ET	ETH	Ethiopia	231	f	2021-10-17 19:57:22.957977	t	2021-10-17 19:57:22.957977
66	FINLAND	FI	FIN	Finland	246	f	2021-10-17 19:57:22.979799	t	2021-10-17 19:57:22.979799
68	FALKLAND ISLANDS (MALVINAS)	FK	FLK	Falkland Islands (Malvinas)	238	f	2021-10-17 19:57:23.025161	t	2021-10-17 19:57:23.025161
69	MICRONESIA, FEDERATED STATES OF	FM	FSM	Micronesia, Federated States of	583	f	2021-10-17 19:57:23.048029	t	2021-10-17 19:57:23.048029
70	FAROE ISLANDS	FO	FRO	Faroe Islands	234	f	2021-10-17 19:57:23.065857	t	2021-10-17 19:57:23.065857
71	FRANCE	FR	FRA	France	250	f	2021-10-17 19:57:23.085931	t	2021-10-17 19:57:23.085931
72	GABON	GA	GAB	Gabon	266	f	2021-10-17 19:57:23.104158	t	2021-10-17 19:57:23.104158
73	UNITED KINGDOM	GB	GBR	United Kingdom	826	f	2021-10-17 19:57:23.121174	t	2021-10-17 19:57:23.121174
75	GEORGIA	GE	GEO	Georgia	268	f	2021-10-17 19:57:23.155317	t	2021-10-17 19:57:23.155317
76	FRENCH GUIANA	GF	GUF	French Guiana	254	f	2021-10-17 19:57:23.171788	t	2021-10-17 19:57:23.171788
77	GUERNSEY	GG	GGY	Guernsey	831	f	2021-10-17 19:57:23.189549	t	2021-10-17 19:57:23.189549
79	GIBRALTAR	GI	GIB	Gibraltar	292	f	2021-10-17 19:57:23.232165	t	2021-10-17 19:57:23.232165
80	GREENLAND	GL	GRL	Greenland	304	f	2021-10-17 19:57:23.281938	t	2021-10-17 19:57:23.281938
83	GUADELOUPE	GP	GLP	Guadeloupe	312	f	2021-10-17 19:57:23.329323	t	2021-10-17 19:57:23.329323
85	GREECE	GR	GRC	Greece	300	f	2021-10-17 19:57:23.361192	t	2021-10-17 19:57:23.361192
86	GUATEMALA	GT	GTM	Guatemala	320	f	2021-10-17 19:57:23.374996	t	2021-10-17 19:57:23.374996
87	GUAM	GU	GUM	Guam	316	f	2021-10-17 19:57:23.391235	t	2021-10-17 19:57:23.391235
88	GUINEA-BISSAU	GW	GNB	Guinea-Bissau	624	f	2021-10-17 19:57:23.405618	t	2021-10-17 19:57:23.405618
91	HONDURAS	HN	HND	Honduras	340	f	2021-10-17 19:57:23.449707	t	2021-10-17 19:57:23.449707
92	CROATIA	HR	HRV	Croatia	191	f	2021-10-17 19:57:23.464392	t	2021-10-17 19:57:23.464392
93	HAITI	HT	HTI	Haiti	332	f	2021-10-17 19:57:23.478847	t	2021-10-17 19:57:23.478847
94	HUNGARY	HU	HUN	Hungary	348	f	2021-10-17 19:57:23.493391	t	2021-10-17 19:57:23.493391
95	INDONESIA	ID	IDN	Indonesia	360	f	2021-10-17 19:57:23.508825	t	2021-10-17 19:57:23.508825
97	ISRAEL	IL	ISR	Israel	376	f	2021-10-17 19:57:23.538508	t	2021-10-17 19:57:23.538508
98	ISLE OF MAN	IM	IMN	Isle of Man	833	f	2021-10-17 19:57:23.553434	t	2021-10-17 19:57:23.553434
100	IRAQ	IQ	IRQ	Iraq	368	f	2021-10-17 19:57:23.582783	t	2021-10-17 19:57:23.582783
101	IRAN, ISLAMIC REPUBLIC OF	IR	IRN	Iran, Islamic Republic of	364	f	2021-10-17 19:57:23.598039	t	2021-10-17 19:57:23.598039
102	ICELAND	IS	ISL	Iceland	352	f	2021-10-17 19:57:23.613211	t	2021-10-17 19:57:23.613211
104	JERSEY	JE	JEY	Jersey	832	f	2021-10-17 19:57:23.642039	t	2021-10-17 19:57:23.642039
105	JAMAICA	JM	JAM	Jamaica	388	f	2021-10-17 19:57:23.658644	t	2021-10-17 19:57:23.658644
106	JORDAN	JO	JOR	Jordan	400	f	2021-10-17 19:57:23.674596	t	2021-10-17 19:57:23.674596
107	JAPAN	JP	JPN	Japan	392	f	2021-10-17 19:57:23.689545	t	2021-10-17 19:57:23.689545
108	KENYA	KE	KEN	Kenya	404	f	2021-10-17 19:57:23.70448	t	2021-10-17 19:57:23.70448
109	KYRGYZSTAN	KG	KGZ	Kyrgyzstan	417	f	2021-10-17 19:57:23.719522	t	2021-10-17 19:57:23.719522
110	CAMBODIA	KH	KHM	Cambodia	116	f	2021-10-17 19:57:23.734263	t	2021-10-17 19:57:23.734263
115	KOREA, REPUBLIC OF	KR	KOR	Korea, Republic of	410	f	2021-10-17 19:57:23.810993	t	2021-10-17 19:57:23.810993
116	KUWAIT	KW	KWT	Kuwait	414	f	2021-10-17 19:57:23.826433	t	2021-10-17 19:57:23.826433
117	CAYMAN ISLANDS	KY	CYM	Cayman Islands	136	f	2021-10-17 19:57:23.844794	t	2021-10-17 19:57:23.844794
118	KAZAKHSTAN	KZ	KAZ	Kazakhstan	398	f	2021-10-17 19:57:23.85932	t	2021-10-17 19:57:23.85932
119	LAO PEOPLE'S DEMOCRATIC REPUBLIC	LA	LAO	Lao People's Democratic Republic	418	f	2021-10-17 19:57:23.873703	t	2021-10-17 19:57:23.873703
120	LEBANON	LB	LBN	Lebanon	422	f	2021-10-17 19:57:23.888661	t	2021-10-17 19:57:23.888661
122	LIECHTENSTEIN	LI	LIE	Liechtenstein	438	f	2021-10-17 19:57:23.918104	t	2021-10-17 19:57:23.918104
123	SRI LANKA	LK	LKA	Sri Lanka	144	f	2021-10-17 19:57:23.932693	t	2021-10-17 19:57:23.932693
124	LIBERIA	LR	LBR	Liberia	430	f	2021-10-17 19:57:23.947399	t	2021-10-17 19:57:23.947399
125	LESOTHO	LS	LSO	Lesotho	426	f	2021-10-17 19:57:23.965478	t	2021-10-17 19:57:23.965478
126	LITHUANIA	LT	LTU	Lithuania	440	f	2021-10-17 19:57:23.979984	t	2021-10-17 19:57:23.979984
127	LUXEMBOURG	LU	LUX	Luxembourg	442	f	2021-10-17 19:57:23.994226	t	2021-10-17 19:57:23.994226
128	LATVIA	LV	LVA	Latvia	428	f	2021-10-17 19:57:24.01785	t	2021-10-17 19:57:24.01785
130	MOROCCO	MA	MAR	Morocco	504	f	2021-10-17 19:57:24.05135	t	2021-10-17 19:57:24.05135
131	MONACO	MC	MCO	Monaco	492	f	2021-10-17 19:57:24.065507	t	2021-10-17 19:57:24.065507
132	MOLDOVA, REPUBLIC OF	MD	MDA	Moldova, Republic of	498	f	2021-10-17 19:57:24.084327	t	2021-10-17 19:57:24.084327
133	MONTENEGRO	ME	MNE	Montenegro	499	f	2021-10-17 19:57:24.099629	t	2021-10-17 19:57:24.099629
134	SAINT MARTIN (FRENCH PART)	MF	MAF	Saint Martin (French part)	663	f	2021-10-17 19:57:24.114238	t	2021-10-17 19:57:24.114238
135	MADAGASCAR	MG	MDG	Madagascar	450	f	2021-10-17 19:57:24.13193	t	2021-10-17 19:57:24.13193
136	MARSHALL ISLANDS	MH	MHL	Marshall Islands	584	f	2021-10-17 19:57:24.14803	t	2021-10-17 19:57:24.14803
137	NORTH MACEDONIA	MK	MKD	North Macedonia	807	f	2021-10-17 19:57:24.162252	t	2021-10-17 19:57:24.162252
139	MYANMAR	MM	MMR	Myanmar	104	f	2021-10-17 19:57:24.195274	t	2021-10-17 19:57:24.195274
140	MONGOLIA	MN	MNG	Mongolia	496	f	2021-10-17 19:57:24.210165	t	2021-10-17 19:57:24.210165
142	NORTHERN MARIANA ISLANDS	MP	MNP	Northern Mariana Islands	580	f	2021-10-17 19:57:24.24028	t	2021-10-17 19:57:24.24028
143	MARTINIQUE	MQ	MTQ	Martinique	474	f	2021-10-17 19:57:24.256266	t	2021-10-17 19:57:24.256266
145	MONTSERRAT	MS	MSR	Montserrat	500	f	2021-10-17 19:57:24.285505	t	2021-10-17 19:57:24.285505
146	MALTA	MT	MLT	Malta	470	f	2021-10-17 19:57:24.302632	t	2021-10-17 19:57:24.302632
147	MAURITIUS	MU	MUS	Mauritius	480	f	2021-10-17 19:57:24.317488	t	2021-10-17 19:57:24.317488
148	MALDIVES	MV	MDV	Maldives	462	f	2021-10-17 19:57:24.332409	t	2021-10-17 19:57:24.332409
152	MOZAMBIQUE	MZ	MOZ	Mozambique	508	f	2021-10-17 19:57:24.393631	t	2021-10-17 19:57:24.393631
153	NAMIBIA	NA	NAM	Namibia	516	f	2021-10-17 19:57:24.410748	t	2021-10-17 19:57:24.410748
154	NEW CALEDONIA	NC	NCL	New Caledonia	540	f	2021-10-17 19:57:24.428024	t	2021-10-17 19:57:24.428024
155	NIGER	NE	NER	Niger	562	f	2021-10-17 19:57:24.442254	t	2021-10-17 19:57:24.442254
156	NORFOLK ISLAND	NF	NFK	Norfolk Island	574	f	2021-10-17 19:57:24.460672	t	2021-10-17 19:57:24.460672
157	NIGERIA	NG	NGA	Nigeria	566	f	2021-10-17 19:57:24.475347	t	2021-10-17 19:57:24.475347
158	NICARAGUA	NI	NIC	Nicaragua	558	f	2021-10-17 19:57:24.492233	t	2021-10-17 19:57:24.492233
159	NETHERLANDS	NL	NLD	Netherlands	528	f	2021-10-17 19:57:24.506462	t	2021-10-17 19:57:24.506462
160	NORWAY	NO	NOR	Norway	578	f	2021-10-17 19:57:24.52107	t	2021-10-17 19:57:24.52107
161	NEPAL	NP	NPL	Nepal	524	f	2021-10-17 19:57:24.535363	t	2021-10-17 19:57:24.535363
165	OMAN	OM	OMN	Oman	512	f	2021-10-17 19:57:24.59934	t	2021-10-17 19:57:24.59934
167	PERU	PE	PER	Peru	604	f	2021-10-17 19:57:24.627655	t	2021-10-17 19:57:24.627655
168	FRENCH POLYNESIA	PF	PYF	French Polynesia	258	f	2021-10-17 19:57:24.641785	t	2021-10-17 19:57:24.641785
169	PAPUA NEW GUINEA	PG	PNG	Papua New Guinea	598	f	2021-10-17 19:57:24.656217	t	2021-10-17 19:57:24.656217
170	PHILIPPINES	PH	PHL	Philippines	608	f	2021-10-17 19:57:24.670735	t	2021-10-17 19:57:24.670735
171	PAKISTAN	PK	PAK	Pakistan	586	f	2021-10-17 19:57:24.684962	t	2021-10-17 19:57:24.684962
172	POLAND	PL	POL	Poland	616	f	2021-10-17 19:57:24.698884	t	2021-10-17 19:57:24.698884
173	SAINT PIERRE AND MIQUELON	PM	SPM	Saint Pierre and Miquelon	666	f	2021-10-17 19:57:24.714228	t	2021-10-17 19:57:24.714228
174	PITCAIRN	PN	PCN	Pitcairn	612	f	2021-10-17 19:57:24.729046	t	2021-10-17 19:57:24.729046
175	PUERTO RICO	PR	PRI	Puerto Rico	630	f	2021-10-17 19:57:24.743699	t	2021-10-17 19:57:24.743699
176	PALESTINE, STATE OF	PS	PSE	Palestine, State of	275	f	2021-10-17 19:57:24.757707	t	2021-10-17 19:57:24.757707
178	PALAU	PW	PLW	Palau	585	f	2021-10-17 19:57:24.787459	t	2021-10-17 19:57:24.787459
179	PARAGUAY	PY	PRY	Paraguay	600	f	2021-10-17 19:57:24.801965	t	2021-10-17 19:57:24.801965
181	RÉUNION	RE	REU	Réunion	638	f	2021-10-17 19:57:24.831366	t	2021-10-17 19:57:24.831366
183	SERBIA	RS	SRB	Serbia	688	f	2021-10-17 19:57:24.860498	t	2021-10-17 19:57:24.860498
184	RUSSIA	RU	RUS	Russia	643	f	2021-10-17 19:57:24.876934	t	2021-10-17 19:57:24.876934
186	SAUDI ARABIA	SA	SAU	Saudi Arabia	682	f	2021-10-17 19:57:24.910428	t	2021-10-17 19:57:24.910428
189	SUDAN	SD	SDN	Sudan	729	f	2021-10-17 19:57:24.954522	t	2021-10-17 19:57:24.954522
190	SWEDEN	SE	SWE	Sweden	752	f	2021-10-17 19:57:24.970858	t	2021-10-17 19:57:24.970858
191	SINGAPORE	SG	SGP	Singapore	702	f	2021-10-17 19:57:24.988686	t	2021-10-17 19:57:24.988686
192	SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA	SH	SHN	Saint Helena, Ascension and Tristan da Cunha	654	f	2021-10-17 19:57:25.011019	t	2021-10-17 19:57:25.011019
193	SLOVENIA	SI	SVN	Slovenia	705	f	2021-10-17 19:57:25.031405	t	2021-10-17 19:57:25.031405
194	SVALBARD AND JAN MAYEN	SJ	SJM	Svalbard and Jan Mayen	744	f	2021-10-17 19:57:25.047732	t	2021-10-17 19:57:25.047732
195	SLOVAKIA	SK	SVK	Slovakia	703	f	2021-10-17 19:57:25.06261	t	2021-10-17 19:57:25.06261
197	SAN MARINO	SM	SMR	San Marino	674	f	2021-10-17 19:57:25.097416	t	2021-10-17 19:57:25.097416
198	SENEGAL	SN	SEN	Senegal	686	f	2021-10-17 19:57:25.112691	t	2021-10-17 19:57:25.112691
201	SOUTH SUDAN	SS	SSD	South Sudan	728	f	2021-10-17 19:57:25.157564	t	2021-10-17 19:57:25.157564
203	EL SALVADOR	SV	SLV	El Salvador	222	f	2021-10-17 19:57:25.187462	t	2021-10-17 19:57:25.187462
204	SINT MAARTEN (DUTCH PART)	SX	SXM	Sint Maarten (Dutch part)	534	f	2021-10-17 19:57:25.202119	t	2021-10-17 19:57:25.202119
206	ESWATINI	SZ	SWZ	Eswatini	748	f	2021-10-17 19:57:25.231759	t	2021-10-17 19:57:25.231759
207	TURKS AND CAICOS ISLANDS	TC	TCA	Turks and Caicos Islands	796	f	2021-10-17 19:57:25.246577	t	2021-10-17 19:57:25.246577
208	CHAD	TD	TCD	Chad	148	f	2021-10-17 19:57:25.263887	t	2021-10-17 19:57:25.263887
211	TAJIKISTAN	TJ	TJK	Tajikistan	762	f	2021-10-17 19:57:25.31169	t	2021-10-17 19:57:25.31169
214	TURKMENISTAN	TM	TKM	Turkmenistan	795	f	2021-10-17 19:57:25.36272	t	2021-10-17 19:57:25.36272
215	TUNISIA	TN	TUN	Tunisia	788	f	2021-10-17 19:57:25.378074	t	2021-10-17 19:57:25.378074
217	TURKEY	TR	TUR	Turkey	792	f	2021-10-17 19:57:25.406974	t	2021-10-17 19:57:25.406974
218	TRINIDAD AND TOBAGO	TT	TTO	Trinidad and Tobago	780	f	2021-10-17 19:57:25.422261	t	2021-10-17 19:57:25.422261
220	TAIWAN	TW	TWN	Taiwan	158	f	2021-10-17 19:57:25.451769	t	2021-10-17 19:57:25.451769
222	UKRAINE	UA	UKR	Ukraine	804	f	2021-10-17 19:57:25.481221	t	2021-10-17 19:57:25.481221
225	URUGUAY	UY	URY	Uruguay	858	f	2021-10-17 19:57:25.532575	t	2021-10-17 19:57:25.532575
226	UZBEKISTAN	UZ	UZB	Uzbekistan	860	f	2021-10-17 19:57:25.550201	t	2021-10-17 19:57:25.550201
227	HOLY SEE (VATICAN CITY STATE)	VA	VAT	Holy See (Vatican City State)	336	f	2021-10-17 19:57:25.566916	t	2021-10-17 19:57:25.566916
228	SAINT VINCENT AND THE GRENADINES	VC	VCT	Saint Vincent and the Grenadines	670	f	2021-10-17 19:57:25.585024	t	2021-10-17 19:57:25.585024
229	VENEZUELA, BOLIVARIAN REPUBLIC OF	VE	VEN	Venezuela, Bolivarian Republic of	862	f	2021-10-17 19:57:25.602967	t	2021-10-17 19:57:25.602967
230	VIRGIN ISLANDS, BRITISH	VG	VGB	Virgin Islands, British	92	f	2021-10-17 19:57:25.617748	t	2021-10-17 19:57:25.617748
231	VIRGIN ISLANDS, U.S.	VI	VIR	Virgin Islands, U.S.	850	f	2021-10-17 19:57:25.632176	t	2021-10-17 19:57:25.632176
232	VIETNAM	VN	VNM	Vietnam	704	f	2021-10-17 19:57:25.647503	t	2021-10-17 19:57:25.647503
234	WALLIS AND FUTUNA	WF	WLF	Wallis and Futuna	876	f	2021-10-17 19:57:25.6781	t	2021-10-17 19:57:25.6781
235	SAMOA	WS	WSM	Samoa	882	f	2021-10-17 19:57:25.694116	t	2021-10-17 19:57:25.694116
237	MAYOTTE	YT	MYT	Mayotte	175	f	2021-10-17 19:57:25.723989	t	2021-10-17 19:57:25.723989
239	ZAMBIA	ZM	ZMB	Zambia	894	f	2021-10-17 19:57:25.757582	t	2021-10-17 19:57:25.757582
4	ANTIGUA AND BARBUDA	AG	ATG	Antigua and Barbuda	28	f	2021-10-17 19:57:21.937333	f	2021-10-17 19:57:21.937333
8	ANGOLA	AO	AGO	Angola	24	f	2021-10-17 19:57:22.013115	f	2021-10-17 19:57:22.013115
13	ARUBA	AW	ABW	Aruba	533	f	2021-10-17 19:57:22.110354	f	2021-10-17 19:57:22.110354
19	BURKINA FASO	BF	BFA	Burkina Faso	854	f	2021-10-17 19:57:22.205999	f	2021-10-17 19:57:22.205999
22	BURUNDI	BI	BDI	Burundi	108	f	2021-10-17 19:57:22.248834	f	2021-10-17 19:57:22.248834
23	BENIN	BJ	BEN	Benin	204	f	2021-10-17 19:57:22.263261	f	2021-10-17 19:57:22.263261
25	BERMUDA	BM	BMU	Bermuda	60	f	2021-10-17 19:57:22.297605	f	2021-10-17 19:57:22.297605
27	BOLIVIA, PLURINATIONAL STATE OF	BO	BOL	Bolivia, Plurinational State of	68	f	2021-10-17 19:57:22.32747	f	2021-10-17 19:57:22.32747
30	BAHAMAS	BS	BHS	Bahamas	44	f	2021-10-17 19:57:22.370335	f	2021-10-17 19:57:22.370335
32	BOTSWANA	BW	BWA	Botswana	72	f	2021-10-17 19:57:22.398954	f	2021-10-17 19:57:22.398954
34	BELIZE	BZ	BLZ	Belize	84	f	2021-10-17 19:57:22.427803	f	2021-10-17 19:57:22.427803
37	CONGO, THE DEMOCRATIC REPUBLIC OF THE	CD	COD	Congo, The Democratic Republic of the	180	f	2021-10-17 19:57:22.478116	f	2021-10-17 19:57:22.478116
38	CENTRAL AFRICAN REPUBLIC	CF	CAF	Central African Republic	140	f	2021-10-17 19:57:22.492361	f	2021-10-17 19:57:22.492361
39	CONGO	CG	COG	Congo	178	f	2021-10-17 19:57:22.508431	f	2021-10-17 19:57:22.508431
41	CÔTE D'IVOIRE	CI	CIV	Côte d'Ivoire	384	f	2021-10-17 19:57:22.537273	f	2021-10-17 19:57:22.537273
42	COOK ISLANDS	CK	COK	Cook Islands	184	f	2021-10-17 19:57:22.553045	f	2021-10-17 19:57:22.553045
44	CAMEROON	CM	CMR	Cameroon	120	f	2021-10-17 19:57:22.590343	f	2021-10-17 19:57:22.590343
55	DJIBOUTI	DJ	DJI	Djibouti	262	f	2021-10-17 19:57:22.774201	f	2021-10-17 19:57:22.774201
57	DOMINICA	DM	DMA	Dominica	212	f	2021-10-17 19:57:22.80427	f	2021-10-17 19:57:22.80427
63	ERITREA	ER	ERI	Eritrea	232	f	2021-10-17 19:57:22.911456	f	2021-10-17 19:57:22.911456
67	FIJI	FJ	FJI	Fiji	242	f	2021-10-17 19:57:23.003222	f	2021-10-17 19:57:23.003222
74	GRENADA	GD	GRD	Grenada	308	f	2021-10-17 19:57:23.137759	f	2021-10-17 19:57:23.137759
78	GHANA	GH	GHA	Ghana	288	f	2021-10-17 19:57:23.211978	f	2021-10-17 19:57:23.211978
81	GAMBIA	GM	GMB	Gambia	270	f	2021-10-17 19:57:23.297464	f	2021-10-17 19:57:23.297464
82	GUINEA	GN	GIN	Guinea	324	f	2021-10-17 19:57:23.312127	f	2021-10-17 19:57:23.312127
84	EQUATORIAL GUINEA	GQ	GNQ	Equatorial Guinea	226	f	2021-10-17 19:57:23.346834	f	2021-10-17 19:57:23.346834
89	GUYANA	GY	GUY	Guyana	328	f	2021-10-17 19:57:23.420054	f	2021-10-17 19:57:23.420054
111	KIRIBATI	KI	KIR	Kiribati	296	f	2021-10-17 19:57:23.748804	f	2021-10-17 19:57:23.748804
112	COMOROS	KM	COM	Comoros	174	f	2021-10-17 19:57:23.764564	f	2021-10-17 19:57:23.764564
113	SAINT KITTS AND NEVIS	KN	KNA	Saint Kitts and Nevis	659	f	2021-10-17 19:57:23.779491	f	2021-10-17 19:57:23.779491
114	KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF	KP	PRK	Korea, Democratic People's Republic of	408	f	2021-10-17 19:57:23.794919	f	2021-10-17 19:57:23.794919
121	SAINT LUCIA	LC	LCA	Saint Lucia	662	f	2021-10-17 19:57:23.903598	f	2021-10-17 19:57:23.903598
129	LIBYA	LY	LBY	Libya	434	f	2021-10-17 19:57:24.036414	f	2021-10-17 19:57:24.036414
138	MALI	ML	MLI	Mali	466	f	2021-10-17 19:57:24.180152	f	2021-10-17 19:57:24.180152
141	MACAO	MO	MAC	Macao	446	f	2021-10-17 19:57:24.225156	f	2021-10-17 19:57:24.225156
144	MAURITANIA	MR	MRT	Mauritania	478	f	2021-10-17 19:57:24.270915	f	2021-10-17 19:57:24.270915
149	MALAWI	MW	MWI	Malawi	454	f	2021-10-17 19:57:24.347087	f	2021-10-17 19:57:24.347087
162	NAURU	NR	NRU	Nauru	520	f	2021-10-17 19:57:24.552832	f	2021-10-17 19:57:24.552832
163	NIUE	NU	NIU	Niue	570	f	2021-10-17 19:57:24.568646	f	2021-10-17 19:57:24.568646
166	PANAMA	PA	PAN	Panama	591	f	2021-10-17 19:57:24.613864	f	2021-10-17 19:57:24.613864
180	QATAR	QA	QAT	Qatar	634	f	2021-10-17 19:57:24.816427	f	2021-10-17 19:57:24.816427
185	RWANDA	RW	RWA	Rwanda	646	f	2021-10-17 19:57:24.89205	f	2021-10-17 19:57:24.89205
187	SOLOMON ISLANDS	SB	SLB	Solomon Islands	90	f	2021-10-17 19:57:24.925614	f	2021-10-17 19:57:24.925614
188	SEYCHELLES	SC	SYC	Seychelles	690	f	2021-10-17 19:57:24.94017	f	2021-10-17 19:57:24.94017
196	SIERRA LEONE	SL	SLE	Sierra Leone	694	f	2021-10-17 19:57:25.082397	f	2021-10-17 19:57:25.082397
199	SOMALIA	SO	SOM	Somalia	706	f	2021-10-17 19:57:25.127576	f	2021-10-17 19:57:25.127576
200	SURINAME	SR	SUR	Suriname	740	f	2021-10-17 19:57:25.142635	f	2021-10-17 19:57:25.142635
202	SAO TOME AND PRINCIPE	ST	STP	Sao Tome and Principe	678	f	2021-10-17 19:57:25.172971	f	2021-10-17 19:57:25.172971
205	SYRIAN ARAB REPUBLIC	SY	SYR	Syrian Arab Republic	760	f	2021-10-17 19:57:25.216633	f	2021-10-17 19:57:25.216633
209	TOGO	TG	TGO	Togo	768	f	2021-10-17 19:57:25.281096	f	2021-10-17 19:57:25.281096
212	TOKELAU	TK	TKL	Tokelau	772	f	2021-10-17 19:57:25.332947	f	2021-10-17 19:57:25.332947
213	TIMOR-LESTE	TL	TLS	Timor-Leste	626	f	2021-10-17 19:57:25.348238	f	2021-10-17 19:57:25.348238
216	TONGA	TO	TON	Tonga	776	f	2021-10-17 19:57:25.392446	f	2021-10-17 19:57:25.392446
219	TUVALU	TV	TUV	Tuvalu	798	f	2021-10-17 19:57:25.437067	f	2021-10-17 19:57:25.437067
221	TANZANIA, UNITED REPUBLIC OF	TZ	TZA	Tanzania, United Republic of	834	f	2021-10-17 19:57:25.466661	f	2021-10-17 19:57:25.466661
223	UGANDA	UG	UGA	Uganda	800	f	2021-10-17 19:57:25.498934	f	2021-10-17 19:57:25.498934
233	VANUATU	VU	VUT	Vanuatu	548	f	2021-10-17 19:57:25.663319	f	2021-10-17 19:57:25.663319
236	YEMEN	YE	YEM	Yemen	887	f	2021-10-17 19:57:25.709454	f	2021-10-17 19:57:25.709454
240	ZIMBABWE	ZW	ZWE	Zimbabwe	716	f	2021-10-17 19:57:25.772515	f	2021-10-17 19:57:25.772515
12	AUSTRALIA	AU	AUS	Australia	36	t	2021-10-17 19:57:22.096094	t	2021-10-17 19:57:22.096094
29	BRAZIL	BR	BRA	Brazil	76	t	2021-10-17 19:57:22.356359	t	2021-10-17 19:57:22.356359
35	CANADA	CA	CAN	Canada	124	t	2021-10-17 19:57:22.446279	t	2021-10-17 19:57:22.446279
45	CHINA	CN	CHN	China	156	t	2021-10-17 19:57:22.611968	t	2021-10-17 19:57:22.611968
64	SPAIN	ES	ESP	Spain	724	t	2021-10-17 19:57:22.932174	t	2021-10-17 19:57:22.932174
99	INDIA	IN	IND	India	356	t	2021-10-17 19:57:23.568026	t	2021-10-17 19:57:23.568026
103	ITALY	IT	ITA	Italy	380	t	2021-10-17 19:57:23.627456	t	2021-10-17 19:57:23.627456
150	MEXICO	MX	MEX	Mexico	484	t	2021-10-17 19:57:24.36452	t	2021-10-17 19:57:24.36452
151	MALAYSIA	MY	MYS	Malaysia	458	t	2021-10-17 19:57:24.379193	t	2021-10-17 19:57:24.379193
164	NEW ZEALAND	NZ	NZL	New Zealand	554	t	2021-10-17 19:57:24.583096	t	2021-10-17 19:57:24.583096
177	PORTUGAL	PT	PRT	Portugal	620	t	2021-10-17 19:57:24.772683	t	2021-10-17 19:57:24.772683
182	ROMANIA	RO	ROU	Romania	642	t	2021-10-17 19:57:24.846053	t	2021-10-17 19:57:24.846053
210	THAILAND	TH	THA	Thailand	764	t	2021-10-17 19:57:25.296804	t	2021-10-17 19:57:25.296804
224	UNITED STATES	US	USA	United States	840	t	2021-10-17 19:57:25.517192	t	2021-10-17 19:57:25.517192
238	SOUTH AFRICA	ZA	ZAF	South Africa	710	t	2021-10-17 19:57:25.740257	t	2021-10-17 19:57:25.740257
2	UNITED ARAB EMIRATES	AE	ARE	United Arab Emirates	784	t	2021-10-17 19:57:21.901997	f	2021-10-17 19:57:21.901997
90	HONG KONG	HK	HKG	Hong Kong	344	t	2021-10-17 19:57:23.434574	f	2021-10-17 19:57:23.434574
96	IRELAND	IE	IRL	Ireland	372	t	2021-10-17 19:57:23.52349	f	2021-10-17 19:57:23.52349
\.


--
-- Data for Name: spree_credit_cards; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_credit_cards (id, month, year, cc_type, last_digits, address_id, gateway_customer_profile_id, gateway_payment_profile_id, created_at, updated_at, name, user_id, payment_method_id, "default", deleted_at) FROM stdin;
\.


--
-- Data for Name: spree_customer_returns; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_customer_returns (id, number, stock_location_id, created_at, updated_at, store_id) FROM stdin;
\.


--
-- Data for Name: spree_gateways; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_gateways (id, type, name, description, active, environment, server, test_mode, created_at, updated_at, preferences) FROM stdin;
\.


--
-- Data for Name: spree_inventory_units; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_inventory_units (id, state, variant_id, order_id, shipment_id, created_at, updated_at, pending, line_item_id, quantity, original_return_item_id) FROM stdin;
1	backordered	2	1	1	2021-10-18 20:04:16.461892	2021-10-18 20:04:26.40258	f	1	10	\N
2	backordered	1	1	1	2021-10-18 20:04:16.470901	2021-10-18 20:04:26.40258	f	3	6	\N
3	backordered	1	2	2	2021-10-20 17:24:40.571842	2021-10-20 17:24:48.196112	f	4	3	\N
4	backordered	2	3	3	2021-10-20 17:52:56.079037	2021-10-20 17:53:08.087758	f	5	10	\N
5	backordered	1	3	3	2021-10-20 17:52:56.084086	2021-10-20 17:53:08.087758	f	6	9	\N
\.


--
-- Data for Name: spree_line_items; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_line_items (id, variant_id, order_id, quantity, price, created_at, updated_at, currency, cost_price, tax_category_id, adjustment_total, additional_tax_total, promo_total, included_tax_total, pre_tax_amount, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
4	1	2	3	5.00	2021-10-20 17:24:13.090199	2021-10-20 17:24:13.33681	EUR	\N	\N	0.00	0.00	0.00	0.00	15.0000	0.00	0.00
5	2	3	10	1.50	2021-10-20 17:50:58.838938	2021-10-20 17:51:31.080638	EUR	\N	\N	0.00	0.00	0.00	0.00	15.0000	0.00	0.00
6	1	3	9	5.00	2021-10-20 17:51:19.673208	2021-10-20 17:51:19.875736	EUR	\N	\N	0.00	0.00	0.00	0.00	45.0000	0.00	0.00
7	3	4	3	1.00	2021-10-20 18:02:39.865067	2021-10-20 18:02:40.221691	EUR	\N	\N	0.00	0.00	0.00	0.00	3.0000	0.00	0.00
8	3	5	6	1.00	2021-10-31 17:30:14.369169	2021-10-31 17:30:14.594899	EUR	\N	\N	0.00	0.00	0.00	0.00	6.0000	0.00	0.00
1	2	1	10	1.50	2021-10-18 20:03:00.882203	2021-10-18 20:03:28.355377	EUR	\N	\N	0.00	0.00	0.00	0.00	15.0000	0.00	0.00
3	1	1	6	5.00	2021-10-18 20:03:52.16285	2021-10-18 20:03:52.310171	EUR	\N	\N	0.00	0.00	0.00	0.00	30.0000	0.00	0.00
\.


--
-- Data for Name: spree_log_entries; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_log_entries (id, source_type, source_id, details, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_menu_items; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_menu_items (id, name, subtitle, destination, new_window, item_type, linked_resource_type, linked_resource_id, code, parent_id, lft, rgt, depth, menu_id, created_at, updated_at) FROM stdin;
4	Orticole			f	Link	Spree::Taxon	5		3	4	5	3	1	2021-10-18 19:51:28.231592	2021-10-18 19:53:22.039166
3	Categorie		\N	f	Container	URL	\N	categorie	2	3	6	2	1	2021-10-18 19:49:55.529682	2021-10-18 19:53:22.055399
2	Verdura			f	Link	Spree::Taxon	2		1	2	7	1	1	2021-10-18 19:37:07.400616	2021-10-18 19:53:22.055399
5	Frutta			f	Link	Spree::Taxon	4	frutta	1	8	9	1	1	2021-10-18 20:01:00.753976	2021-10-18 20:01:08.289483
1	Main Menu	\N	\N	f	Container	URL	\N	\N	\N	1	10	0	1	2021-10-18 19:35:20.932566	2021-10-18 20:01:08.305851
\.


--
-- Data for Name: spree_menus; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_menus (id, name, location, locale, store_id, created_at, updated_at) FROM stdin;
1	Main Menu	header	it	1	2021-10-18 19:35:20.885751	2021-10-18 20:01:08.308541
\.


--
-- Data for Name: spree_oauth_access_grants; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_oauth_access_grants (id, resource_owner_id, application_id, token, expires_in, redirect_uri, created_at, revoked_at, scopes) FROM stdin;
\.


--
-- Data for Name: spree_oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_oauth_access_tokens (id, resource_owner_id, application_id, token, refresh_token, expires_in, revoked_at, created_at, scopes, previous_refresh_token) FROM stdin;
1	1	1	6ngJTHQ6PxTqqZNBHI4bcywNYucDlLJupY3fKm-AuSk	\N	\N	\N	2021-10-17 20:20:12.2934	admin	
2	2	\N	B3yneHUSLCWDQendifRkoBeA9oB1eB4FO-SD09ktYCQ	\N	\N	\N	2021-10-18 12:56:24.372539	\N	
3	2	1	zmqBHP6-MuN__I2dQiyDa7na6OD7HopnhJk0Js16vqo	\N	\N	\N	2021-10-25 03:09:56.177573	admin	
\.


--
-- Data for Name: spree_oauth_applications; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_oauth_applications (id, name, uid, secret, redirect_uri, scopes, confidential, created_at, updated_at) FROM stdin;
1	Admin Panel	KMB3EpsARItn3DtJAt5Vt0Do3Tsabx00m84iDazZA6Q	p62Ld9zTMdtLes7wHQwVWdqMd1CcYQckSfQufSXo4Bk		admin	t	2021-10-17 20:20:12.265106	2021-10-17 20:20:12.265106
\.


--
-- Data for Name: spree_option_type_prototypes; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_option_type_prototypes (prototype_id, option_type_id, id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_option_types; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_option_types (id, name, presentation, "position", created_at, updated_at, filterable) FROM stdin;
\.


--
-- Data for Name: spree_option_value_variants; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_option_value_variants (variant_id, option_value_id, id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_option_values; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_option_values (id, "position", name, presentation, option_type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_order_promotions; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_order_promotions (order_id, promotion_id, id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_orders; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_orders (id, number, item_total, total, state, adjustment_total, user_id, completed_at, bill_address_id, ship_address_id, payment_total, shipment_state, payment_state, email, special_instructions, created_at, updated_at, currency, last_ip_address, created_by_id, shipment_total, additional_tax_total, promo_total, channel, included_tax_total, item_count, approver_id, approved_at, confirmation_delivered, considered_risky, token, canceled_at, canceler_id, store_id, state_lock_version, taxable_adjustment_total, non_taxable_adjustment_total, store_owner_notification_delivered) FROM stdin;
1	R010671010	45.00	45.00	complete	0.00	1	2021-10-18 20:04:26.614109	1	1	0.00	backorder	balance_due	spree@example.com	\N	2021-10-18 20:03:00.477976	2021-10-18 20:04:26.614109	EUR	82.54.168.67	1	0.00	0.00	0.00	spree	0.00	16	\N	\N	t	f	jT_S_GDbXppX-L1uWKVUcg1634501394842	\N	\N	1	3	0.00	0.00	\N
3	R075946804	60.00	60.00	complete	0.00	1	2021-10-20 17:53:08.315122	2	2	0.00	backorder	balance_due	spree@example.com	\N	2021-10-20 17:50:58.283479	2021-10-20 17:53:08.315122	EUR	5.88.179.140	1	0.00	0.00	0.00	spree	0.00	19	\N	\N	t	f	fB0UMduINvc5VR3X1OlegQ1634749938138	\N	\N	1	3	0.00	0.00	\N
4	R119176855	3.00	3.00	cart	0.00	1	\N	\N	\N	0.00	\N	\N	spree@example.com	\N	2021-10-20 18:02:39.539471	2021-10-20 18:02:39.868679	EUR	\N	1	0.00	0.00	0.00	spree	0.00	3	\N	\N	f	f	fB0UMduINvc5VR3X1OlegQ1634749938138	\N	\N	1	0	0.00	0.00	\N
2	R871287234	15.00	15.00	complete	0.00	1	2021-10-20 17:24:48.330439	1	1	0.00	backorder	balance_due	spree@example.com	\N	2021-10-20 17:24:12.794696	2021-10-20 17:24:48.330439	EUR	5.88.179.140	1	0.00	0.00	0.00	spree	0.00	3	\N	\N	t	f	fB0UMduINvc5VR3X1OlegQ1634749938138	\N	\N	1	3	0.00	0.00	\N
5	R302284860	6.00	6.00	address	0.00	2	\N	\N	\N	0.00	\N	\N	gruppobio@email.it	\N	2021-10-31 17:30:14.092336	2021-10-31 17:30:14.37364	EUR	\N	2	0.00	0.00	0.00	spree	0.00	6	\N	\N	f	f	fGlexWGvdtU_42QHt9tuQQ1634656937605	\N	\N	1	0	0.00	0.00	\N
\.


--
-- Data for Name: spree_payment_capture_events; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_payment_capture_events (id, amount, payment_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_payment_methods; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_payment_methods (id, type, name, description, active, deleted_at, created_at, updated_at, display_on, auto_capture, preferences, "position") FROM stdin;
1	Spree::PaymentMethod::Check	Check		t	\N	2021-10-17 21:22:05.360765	2021-10-17 21:22:05.360765	both	f	\N	1
\.


--
-- Data for Name: spree_payment_methods_stores; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_payment_methods_stores (payment_method_id, store_id) FROM stdin;
1	1
\.


--
-- Data for Name: spree_payments; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_payments (id, amount, order_id, source_type, source_id, payment_method_id, state, response_code, avs_response, created_at, updated_at, number, cvv_response_code, cvv_response_message, intent_client_key) FROM stdin;
1	45.00	1	\N	\N	1	checkout	\N	\N	2021-10-18 20:04:26.248797	2021-10-18 20:04:26.248797	P9ZZ1EW2	\N	\N	\N
2	15.00	2	\N	\N	1	checkout	\N	\N	2021-10-20 17:24:48.050475	2021-10-20 17:24:48.050475	PM3U387S	\N	\N	\N
3	60.00	3	\N	\N	1	checkout	\N	\N	2021-10-20 17:53:07.918075	2021-10-20 17:53:07.918075	PJFHIBZF	\N	\N	\N
\.


--
-- Data for Name: spree_preferences; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_preferences (id, value, key, created_at, updated_at) FROM stdin;
1	--- 224\n	spree/app_configuration/default_country_id	2021-10-17 19:57:25.795192	2021-10-17 19:57:25.795192
2	--- EUR\n	spree/app_configuration/currency	2021-10-17 20:20:38.364941	2021-10-17 20:20:38.364941
3	--- false\n	spree/app_configuration/show_store_selector	2021-10-17 20:20:38.380023	2021-10-17 20:20:38.380023
\.


--
-- Data for Name: spree_prices; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_prices (id, variant_id, amount, currency, deleted_at, created_at, updated_at, compare_at_amount) FROM stdin;
1	1	5.00	EUR	\N	2021-10-17 22:02:36.084981	2021-10-17 22:02:49.94078	0.00
2	2	1.50	EUR	\N	2021-10-17 22:06:18.966429	2021-10-17 22:06:31.036335	0.00
3	3	1.00	EUR	\N	2021-10-20 18:00:16.871711	2021-10-20 18:01:14.526942	0.00
\.


--
-- Data for Name: spree_product_option_types; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_product_option_types (id, "position", product_id, option_type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_product_promotion_rules; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_product_promotion_rules (product_id, promotion_rule_id, id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_product_properties; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position", show_property, filter_param) FROM stdin;
\.


--
-- Data for Name: spree_products; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title, discontinue_on) FROM stdin;
2	ALBICOCCA DE 		2021-10-11 00:00:00	\N	albicocca-de			\N	1	2021-10-17 22:06:18.95086	2021-10-20 17:53:08.180068	t		\N
1	AGLIO FRESCO  GAL		2021-10-11 00:00:00	\N	aglio-fresco-gal			\N	1	2021-10-17 22:02:36.064417	2021-10-20 17:53:08.25903	t		\N
3	A. DRAGONCELLO  CA MAGRE		2021-10-18 00:00:00	\N	adrgn-cm			\N	1	2021-10-20 18:00:16.857507	2021-10-20 18:12:45.164552	t		\N
\.


--
-- Data for Name: spree_products_stores; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_products_stores (id, product_id, store_id, created_at, updated_at) FROM stdin;
1	1	1	2021-10-17 22:02:36.178351	2021-10-17 22:02:36.178351
2	2	1	2021-10-17 22:06:19.003818	2021-10-17 22:06:19.003818
3	3	1	2021-10-20 18:00:16.911129	2021-10-20 18:00:16.911129
\.


--
-- Data for Name: spree_products_taxons; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_products_taxons (product_id, taxon_id, id, "position", created_at, updated_at) FROM stdin;
1	5	1	1	2021-10-18 19:57:20.615038	2021-10-18 19:57:20.615038
2	4	2	1	2021-10-18 19:57:34.378431	2021-10-18 19:57:34.378431
2	10	3	1	2021-10-20 17:22:12.266389	2021-10-20 17:22:12.266389
3	2	4	1	2021-10-20 18:01:14.461462	2021-10-20 18:01:14.461462
\.


--
-- Data for Name: spree_promotion_action_line_items; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotion_action_line_items (id, promotion_action_id, variant_id, quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_actions; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotion_actions (id, promotion_id, "position", type, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_categories; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotion_categories (id, name, created_at, updated_at, code) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rule_taxons; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotion_rule_taxons (id, taxon_id, promotion_rule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rule_users; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotion_rule_users (user_id, promotion_rule_id, id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rules; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotion_rules (id, promotion_id, user_id, product_group_id, type, created_at, updated_at, code, preferences) FROM stdin;
\.


--
-- Data for Name: spree_promotions; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotions (id, description, expires_at, starts_at, name, type, usage_limit, match_policy, code, advertise, path, created_at, updated_at, promotion_category_id) FROM stdin;
\.


--
-- Data for Name: spree_promotions_stores; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_promotions_stores (id, promotion_id, store_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_properties; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_properties (id, name, presentation, created_at, updated_at, filterable, filter_param) FROM stdin;
\.


--
-- Data for Name: spree_property_prototypes; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_property_prototypes (prototype_id, property_id, id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_prototype_taxons; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_prototype_taxons (id, taxon_id, prototype_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_prototypes; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_prototypes (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_refund_reasons; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_refund_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Return processing	t	f	2021-10-17 19:57:06.632891	2021-10-17 19:57:06.632891
\.


--
-- Data for Name: spree_refunds; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_refunds (id, payment_id, amount, transaction_id, created_at, updated_at, refund_reason_id, reimbursement_id) FROM stdin;
\.


--
-- Data for Name: spree_reimbursement_credits; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_reimbursement_credits (id, amount, reimbursement_id, creditable_id, creditable_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_reimbursement_types; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_reimbursement_types (id, name, active, mutable, created_at, updated_at, type) FROM stdin;
1	original	t	t	2021-10-17 19:57:06.859236	2021-10-17 19:57:06.905111	Spree::ReimbursementType::OriginalPayment
\.


--
-- Data for Name: spree_reimbursements; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_reimbursements (id, number, reimbursement_status, customer_return_id, order_id, total, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_return_authorization_reasons; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_return_authorization_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Better price available	t	t	2021-10-17 19:57:06.502647	2021-10-17 19:57:06.502647
2	Missed estimated delivery date	t	t	2021-10-17 19:57:06.507062	2021-10-17 19:57:06.507062
3	Missing parts or accessories	t	t	2021-10-17 19:57:06.51096	2021-10-17 19:57:06.51096
4	Damaged/Defective	t	t	2021-10-17 19:57:06.514609	2021-10-17 19:57:06.514609
5	Different from what was ordered	t	t	2021-10-17 19:57:06.518346	2021-10-17 19:57:06.518346
6	Different from description	t	t	2021-10-17 19:57:06.522229	2021-10-17 19:57:06.522229
7	No longer needed/wanted	t	t	2021-10-17 19:57:06.525899	2021-10-17 19:57:06.525899
8	Accidental order	t	t	2021-10-17 19:57:06.529807	2021-10-17 19:57:06.529807
9	Unauthorized purchase	t	t	2021-10-17 19:57:06.533437	2021-10-17 19:57:06.533437
\.


--
-- Data for Name: spree_return_authorizations; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_return_authorizations (id, number, state, order_id, memo, created_at, updated_at, stock_location_id, return_authorization_reason_id) FROM stdin;
\.


--
-- Data for Name: spree_return_items; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_return_items (id, return_authorization_id, inventory_unit_id, exchange_variant_id, created_at, updated_at, pre_tax_amount, included_tax_total, additional_tax_total, reception_status, acceptance_status, customer_return_id, reimbursement_id, acceptance_status_errors, preferred_reimbursement_type_id, override_reimbursement_type_id, resellable) FROM stdin;
\.


--
-- Data for Name: spree_role_users; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_role_users (role_id, user_id, id, created_at, updated_at) FROM stdin;
1	1	1	2021-10-17 19:57:35.601771	2021-10-17 19:57:35.601771
\.


--
-- Data for Name: spree_roles; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_roles (id, name, created_at, updated_at) FROM stdin;
1	admin	2021-10-17 19:57:25.849186	2021-10-17 19:57:25.849186
2	user	2021-10-17 19:57:25.858832	2021-10-17 19:57:25.858832
\.


--
-- Data for Name: spree_shipments; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_shipments (id, tracking, number, cost, shipped_at, order_id, address_id, state, created_at, updated_at, stock_location_id, adjustment_total, additional_tax_total, promo_total, included_tax_total, pre_tax_amount, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
1	\N	H51657551587	0.00	\N	1	1	pending	2021-10-18 20:04:16.454953	2021-10-18 20:04:26.399136	1	0.00	0.00	0.00	0.00	0.0000	0.00	0.00
2	\N	H80727468287	0.00	\N	2	1	pending	2021-10-20 17:24:40.565473	2021-10-20 17:24:48.192563	1	0.00	0.00	0.00	0.00	0.0000	0.00	0.00
3	\N	H15429920747	0.00	\N	3	2	pending	2021-10-20 17:52:56.074057	2021-10-20 17:53:08.083853	1	0.00	0.00	0.00	0.00	0.0000	0.00	0.00
\.


--
-- Data for Name: spree_shipping_categories; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_shipping_categories (id, name, created_at, updated_at) FROM stdin;
1	Default	2021-10-17 19:57:05.352121	2021-10-17 19:57:05.352121
2	Leggero	2021-10-17 22:00:12.356203	2021-10-17 22:00:12.356203
3	Pesante	2021-10-17 22:00:19.092573	2021-10-17 22:00:19.092573
4	Ritiro Personale	2021-10-17 22:00:26.488572	2021-10-17 22:00:26.488572
\.


--
-- Data for Name: spree_shipping_method_categories; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_shipping_method_categories (id, shipping_method_id, shipping_category_id, created_at, updated_at) FROM stdin;
1	1	1	2021-10-17 21:51:29.082204	2021-10-17 21:51:29.082204
\.


--
-- Data for Name: spree_shipping_method_zones; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_shipping_method_zones (shipping_method_id, zone_id, id, created_at, updated_at) FROM stdin;
1	7	1	2021-10-17 21:51:29.089726	2021-10-17 21:51:29.089726
\.


--
-- Data for Name: spree_shipping_methods; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_shipping_methods (id, name, display_on, deleted_at, created_at, updated_at, tracking_url, admin_name, tax_category_id, code) FROM stdin;
1	Nessuno	both	\N	2021-10-17 21:51:29.068035	2021-10-17 21:51:29.068035		NOSHIPMENT	1	NOSHIPMENT
\.


--
-- Data for Name: spree_shipping_rates; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_shipping_rates (id, shipment_id, shipping_method_id, selected, cost, created_at, updated_at, tax_rate_id) FROM stdin;
1	1	1	t	0.00	2021-10-18 20:04:16.475753	2021-10-18 20:04:22.603522	1
2	2	1	t	0.00	2021-10-20 17:24:40.578662	2021-10-20 17:24:44.983767	1
3	3	1	t	0.00	2021-10-20 17:52:56.089049	2021-10-20 17:53:02.212597	1
\.


--
-- Data for Name: spree_state_changes; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_state_changes (id, name, previous_state, stateful_id, user_id, stateful_type, next_state, created_at, updated_at) FROM stdin;
1	order	address	1	1	Spree::Order	delivery	2021-10-18 20:04:16.601371	2021-10-18 20:04:16.601371
2	order	delivery	1	1	Spree::Order	payment	2021-10-18 20:04:22.92463	2021-10-18 20:04:22.92463
3	order	payment	1	1	Spree::Order	complete	2021-10-18 20:04:26.348977	2021-10-18 20:04:26.348977
4	payment	\N	1	1	Spree::Order	balance_due	2021-10-18 20:04:26.386088	2021-10-18 20:04:26.386088
5	shipment	\N	1	1	Spree::Order	backorder	2021-10-18 20:04:26.579206	2021-10-18 20:04:26.579206
6	order	address	2	1	Spree::Order	delivery	2021-10-20 17:24:40.728927	2021-10-20 17:24:40.728927
7	order	delivery	2	1	Spree::Order	payment	2021-10-20 17:24:45.496147	2021-10-20 17:24:45.496147
8	order	payment	2	1	Spree::Order	complete	2021-10-20 17:24:48.142588	2021-10-20 17:24:48.142588
9	payment	\N	2	1	Spree::Order	balance_due	2021-10-20 17:24:48.179812	2021-10-20 17:24:48.179812
10	shipment	\N	2	1	Spree::Order	backorder	2021-10-20 17:24:48.306519	2021-10-20 17:24:48.306519
11	order	address	3	1	Spree::Order	delivery	2021-10-20 17:52:56.222005	2021-10-20 17:52:56.222005
12	order	delivery	3	1	Spree::Order	payment	2021-10-20 17:53:02.58482	2021-10-20 17:53:02.58482
13	order	payment	3	1	Spree::Order	complete	2021-10-20 17:53:08.030722	2021-10-20 17:53:08.030722
14	payment	\N	3	1	Spree::Order	balance_due	2021-10-20 17:53:08.069711	2021-10-20 17:53:08.069711
15	shipment	\N	3	1	Spree::Order	backorder	2021-10-20 17:53:08.283165	2021-10-20 17:53:08.283165
\.


--
-- Data for Name: spree_states; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_states (id, name, abbr, country_id, updated_at, created_at) FROM stdin;
1	Australian Capital Territory	ACT	12	2021-10-17 19:57:25.925187	2021-10-17 19:57:25.925187
2	New South Wales	NSW	12	2021-10-17 19:57:25.939802	2021-10-17 19:57:25.939802
3	Northern Territory	NT	12	2021-10-17 19:57:25.951598	2021-10-17 19:57:25.951598
4	Queensland	QLD	12	2021-10-17 19:57:25.963485	2021-10-17 19:57:25.963485
5	South Australia	SA	12	2021-10-17 19:57:25.976233	2021-10-17 19:57:25.976233
6	Tasmania	TAS	12	2021-10-17 19:57:25.989085	2021-10-17 19:57:25.989085
7	Victoria	VIC	12	2021-10-17 19:57:26.00436	2021-10-17 19:57:26.00436
8	Western Australia	WA	12	2021-10-17 19:57:26.019314	2021-10-17 19:57:26.019314
9	Acre	AC	29	2021-10-17 19:57:26.036284	2021-10-17 19:57:26.036284
10	Alagoas	AL	29	2021-10-17 19:57:26.04936	2021-10-17 19:57:26.04936
11	Amazonas	AM	29	2021-10-17 19:57:26.063091	2021-10-17 19:57:26.063091
12	Amapá	AP	29	2021-10-17 19:57:26.077163	2021-10-17 19:57:26.077163
13	Bahia	BA	29	2021-10-17 19:57:26.090766	2021-10-17 19:57:26.090766
14	Ceará	CE	29	2021-10-17 19:57:26.110502	2021-10-17 19:57:26.110502
15	Distrito Federal	DF	29	2021-10-17 19:57:26.123565	2021-10-17 19:57:26.123565
16	Espírito Santo	ES	29	2021-10-17 19:57:26.135996	2021-10-17 19:57:26.135996
17	Goiás	GO	29	2021-10-17 19:57:26.148162	2021-10-17 19:57:26.148162
18	Maranhão	MA	29	2021-10-17 19:57:26.160721	2021-10-17 19:57:26.160721
19	Minas Gerais	MG	29	2021-10-17 19:57:26.173937	2021-10-17 19:57:26.173937
20	Mato Grosso do Sul	MS	29	2021-10-17 19:57:26.186753	2021-10-17 19:57:26.186753
21	Mato Grosso	MT	29	2021-10-17 19:57:26.198916	2021-10-17 19:57:26.198916
22	Pará	PA	29	2021-10-17 19:57:26.210889	2021-10-17 19:57:26.210889
23	Paraíba	PB	29	2021-10-17 19:57:26.222931	2021-10-17 19:57:26.222931
24	Pernambuco	PE	29	2021-10-17 19:57:26.238864	2021-10-17 19:57:26.238864
25	Piauí	PI	29	2021-10-17 19:57:26.25199	2021-10-17 19:57:26.25199
26	Paraná	PR	29	2021-10-17 19:57:26.263964	2021-10-17 19:57:26.263964
27	Rio de Janeiro	RJ	29	2021-10-17 19:57:26.276388	2021-10-17 19:57:26.276388
28	Rio Grande do Norte	RN	29	2021-10-17 19:57:26.291345	2021-10-17 19:57:26.291345
29	Rondônia	RO	29	2021-10-17 19:57:26.303006	2021-10-17 19:57:26.303006
30	Roraima	RR	29	2021-10-17 19:57:26.314667	2021-10-17 19:57:26.314667
31	Rio Grande do Sul	RS	29	2021-10-17 19:57:26.326524	2021-10-17 19:57:26.326524
32	Santa Catarina	SC	29	2021-10-17 19:57:26.339056	2021-10-17 19:57:26.339056
33	Sergipe	SE	29	2021-10-17 19:57:26.35142	2021-10-17 19:57:26.35142
34	São Paulo	SP	29	2021-10-17 19:57:26.363949	2021-10-17 19:57:26.363949
35	Tocantins	TO	29	2021-10-17 19:57:26.375766	2021-10-17 19:57:26.375766
36	Alberta	AB	35	2021-10-17 19:57:26.389813	2021-10-17 19:57:26.389813
37	British Columbia	BC	35	2021-10-17 19:57:26.401485	2021-10-17 19:57:26.401485
38	Manitoba	MB	35	2021-10-17 19:57:26.413768	2021-10-17 19:57:26.413768
39	New Brunswick	NB	35	2021-10-17 19:57:26.425182	2021-10-17 19:57:26.425182
40	Newfoundland and Labrador	NL	35	2021-10-17 19:57:26.436405	2021-10-17 19:57:26.436405
41	Nova Scotia	NS	35	2021-10-17 19:57:26.447815	2021-10-17 19:57:26.447815
42	Northwest Territories	NT	35	2021-10-17 19:57:26.461255	2021-10-17 19:57:26.461255
43	Nunavut	NU	35	2021-10-17 19:57:26.47335	2021-10-17 19:57:26.47335
44	Ontario	ON	35	2021-10-17 19:57:26.48567	2021-10-17 19:57:26.48567
45	Prince Edward Island	PE	35	2021-10-17 19:57:26.501834	2021-10-17 19:57:26.501834
46	Quebec	QC	35	2021-10-17 19:57:26.514297	2021-10-17 19:57:26.514297
47	Saskatchewan	SK	35	2021-10-17 19:57:26.527083	2021-10-17 19:57:26.527083
48	Yukon Territory	YT	35	2021-10-17 19:57:26.539233	2021-10-17 19:57:26.539233
49	Anhui Sheng	AH	45	2021-10-17 19:57:26.5535	2021-10-17 19:57:26.5535
50	Beijing Shi	BJ	45	2021-10-17 19:57:26.565661	2021-10-17 19:57:26.565661
51	Chongqing Shi	CQ	45	2021-10-17 19:57:26.577437	2021-10-17 19:57:26.577437
52	Fujian Sheng	FJ	45	2021-10-17 19:57:26.589068	2021-10-17 19:57:26.589068
53	Guangdong Sheng	GD	45	2021-10-17 19:57:26.604054	2021-10-17 19:57:26.604054
54	Gansu Sheng	GS	45	2021-10-17 19:57:26.61561	2021-10-17 19:57:26.61561
55	Guangxi Zhuangzu Zizhiqu	GX	45	2021-10-17 19:57:26.627771	2021-10-17 19:57:26.627771
56	Guizhou Sheng	GZ	45	2021-10-17 19:57:26.639931	2021-10-17 19:57:26.639931
57	Henan Sheng	HA	45	2021-10-17 19:57:26.657031	2021-10-17 19:57:26.657031
58	Hubei Sheng	HB	45	2021-10-17 19:57:26.670272	2021-10-17 19:57:26.670272
59	Hebei Sheng	HE	45	2021-10-17 19:57:26.682111	2021-10-17 19:57:26.682111
60	Hainan Sheng	HI	45	2021-10-17 19:57:26.693625	2021-10-17 19:57:26.693625
61	Heilongjiang Sheng	HL	45	2021-10-17 19:57:26.705852	2021-10-17 19:57:26.705852
62	Hunan Sheng	HN	45	2021-10-17 19:57:26.717636	2021-10-17 19:57:26.717636
63	Jilin Sheng	JL	45	2021-10-17 19:57:26.729259	2021-10-17 19:57:26.729259
64	Jiangsu Sheng	JS	45	2021-10-17 19:57:26.74059	2021-10-17 19:57:26.74059
65	Jiangxi Sheng	JX	45	2021-10-17 19:57:26.752394	2021-10-17 19:57:26.752394
66	Liaoning Sheng	LN	45	2021-10-17 19:57:26.764346	2021-10-17 19:57:26.764346
67	Nei Mongol Zizhiqu	NM	45	2021-10-17 19:57:26.776113	2021-10-17 19:57:26.776113
68	Ningxia Huizi Zizhiqu	NX	45	2021-10-17 19:57:26.787678	2021-10-17 19:57:26.787678
69	Qinghai Sheng	QH	45	2021-10-17 19:57:26.799532	2021-10-17 19:57:26.799532
70	Sichuan Sheng	SC	45	2021-10-17 19:57:26.81148	2021-10-17 19:57:26.81148
71	Shandong Sheng	SD	45	2021-10-17 19:57:26.823743	2021-10-17 19:57:26.823743
72	Shanghai Shi	SH	45	2021-10-17 19:57:26.837138	2021-10-17 19:57:26.837138
73	Shaanxi Sheng	SN	45	2021-10-17 19:57:26.849471	2021-10-17 19:57:26.849471
74	Shanxi Sheng	SX	45	2021-10-17 19:57:26.861764	2021-10-17 19:57:26.861764
75	Tianjin Shi	TJ	45	2021-10-17 19:57:26.873676	2021-10-17 19:57:26.873676
76	Xinjiang Uygur Zizhiqu	XJ	45	2021-10-17 19:57:26.89128	2021-10-17 19:57:26.89128
77	Xizang Zizhiqu	XZ	45	2021-10-17 19:57:26.903692	2021-10-17 19:57:26.903692
78	Yunnan Sheng	YN	45	2021-10-17 19:57:26.915947	2021-10-17 19:57:26.915947
79	Zhejiang Sheng	ZJ	45	2021-10-17 19:57:26.92771	2021-10-17 19:57:26.92771
80	Almería	AL	64	2021-10-17 19:57:26.942626	2021-10-17 19:57:26.942626
81	Cádiz	CA	64	2021-10-17 19:57:26.954393	2021-10-17 19:57:26.954393
82	Córdoba	CO	64	2021-10-17 19:57:26.966391	2021-10-17 19:57:26.966391
83	Granada	GR	64	2021-10-17 19:57:26.980305	2021-10-17 19:57:26.980305
84	Huelva	H	64	2021-10-17 19:57:26.992594	2021-10-17 19:57:26.992594
85	Jaén	J	64	2021-10-17 19:57:27.00653	2021-10-17 19:57:27.00653
86	Málaga	MA	64	2021-10-17 19:57:27.019074	2021-10-17 19:57:27.019074
87	Sevilla	SE	64	2021-10-17 19:57:27.035036	2021-10-17 19:57:27.035036
88	Huesca	HU	64	2021-10-17 19:57:27.049644	2021-10-17 19:57:27.049644
89	Teruel	TE	64	2021-10-17 19:57:27.06306	2021-10-17 19:57:27.06306
90	Zaragoza	Z	64	2021-10-17 19:57:27.077907	2021-10-17 19:57:27.077907
91	Asturias	O	64	2021-10-17 19:57:27.091799	2021-10-17 19:57:27.091799
92	Cantabria	S	64	2021-10-17 19:57:27.105542	2021-10-17 19:57:27.105542
93	Ceuta	CE	64	2021-10-17 19:57:27.118268	2021-10-17 19:57:27.118268
94	Ávila	AV	64	2021-10-17 19:57:27.13402	2021-10-17 19:57:27.13402
95	Burgos	BU	64	2021-10-17 19:57:27.147292	2021-10-17 19:57:27.147292
96	León	LE	64	2021-10-17 19:57:27.159287	2021-10-17 19:57:27.159287
97	Palencia	P	64	2021-10-17 19:57:27.176443	2021-10-17 19:57:27.176443
98	Salamanca	SA	64	2021-10-17 19:57:27.19	2021-10-17 19:57:27.19
99	Segovia	SG	64	2021-10-17 19:57:27.207451	2021-10-17 19:57:27.207451
100	Soria	SO	64	2021-10-17 19:57:27.21986	2021-10-17 19:57:27.21986
101	Valladolid	VA	64	2021-10-17 19:57:27.232213	2021-10-17 19:57:27.232213
102	Zamora	ZA	64	2021-10-17 19:57:27.244574	2021-10-17 19:57:27.244574
103	Albacete	AB	64	2021-10-17 19:57:27.257279	2021-10-17 19:57:27.257279
104	Ciudad Real	CR	64	2021-10-17 19:57:27.269428	2021-10-17 19:57:27.269428
105	Cuenca	CU	64	2021-10-17 19:57:27.281834	2021-10-17 19:57:27.281834
106	Guadalajara	GU	64	2021-10-17 19:57:27.294194	2021-10-17 19:57:27.294194
107	Toledo	TO	64	2021-10-17 19:57:27.306265	2021-10-17 19:57:27.306265
108	Las Palmas	GC	64	2021-10-17 19:57:27.321076	2021-10-17 19:57:27.321076
109	Santa Cruz de Tenerife	TF	64	2021-10-17 19:57:27.333011	2021-10-17 19:57:27.333011
110	Barcelona	B	64	2021-10-17 19:57:27.34535	2021-10-17 19:57:27.34535
111	Girona	GI	64	2021-10-17 19:57:27.35789	2021-10-17 19:57:27.35789
112	Lleida	L	64	2021-10-17 19:57:27.371909	2021-10-17 19:57:27.371909
113	Tarragona	T	64	2021-10-17 19:57:27.38456	2021-10-17 19:57:27.38456
114	Badajoz	BA	64	2021-10-17 19:57:27.397055	2021-10-17 19:57:27.397055
115	Cáceres	CC	64	2021-10-17 19:57:27.40886	2021-10-17 19:57:27.40886
116	A Coruña	C	64	2021-10-17 19:57:27.422949	2021-10-17 19:57:27.422949
117	Lugo	LU	64	2021-10-17 19:57:27.436149	2021-10-17 19:57:27.436149
118	Ourense	OR	64	2021-10-17 19:57:27.447918	2021-10-17 19:57:27.447918
119	Pontevedra	PO	64	2021-10-17 19:57:27.459493	2021-10-17 19:57:27.459493
120	Balears	PM	64	2021-10-17 19:57:27.475108	2021-10-17 19:57:27.475108
121	Murcia	MU	64	2021-10-17 19:57:27.48729	2021-10-17 19:57:27.48729
122	Madrid	M	64	2021-10-17 19:57:27.500192	2021-10-17 19:57:27.500192
123	Melilla	ML	64	2021-10-17 19:57:27.512049	2021-10-17 19:57:27.512049
124	Navarra / Nafarroa	NA	64	2021-10-17 19:57:27.524546	2021-10-17 19:57:27.524546
125	Vizcaya / Bizkaia	BI	64	2021-10-17 19:57:27.536952	2021-10-17 19:57:27.536952
126	Gipuzkoa	SS	64	2021-10-17 19:57:27.548599	2021-10-17 19:57:27.548599
127	Álava	VI	64	2021-10-17 19:57:27.560614	2021-10-17 19:57:27.560614
128	La Rioja	LO	64	2021-10-17 19:57:27.572895	2021-10-17 19:57:27.572895
129	Alicante	A	64	2021-10-17 19:57:27.585822	2021-10-17 19:57:27.585822
130	Castellón	CS	64	2021-10-17 19:57:27.598243	2021-10-17 19:57:27.598243
131	Valencia / València	V	64	2021-10-17 19:57:27.614088	2021-10-17 19:57:27.614088
132	Andaman and Nicobar Islands	AN	99	2021-10-17 19:57:27.637833	2021-10-17 19:57:27.637833
133	Andhra Pradesh	AP	99	2021-10-17 19:57:27.652325	2021-10-17 19:57:27.652325
134	Arunachal Pradesh	AR	99	2021-10-17 19:57:27.664618	2021-10-17 19:57:27.664618
135	Assam	AS	99	2021-10-17 19:57:27.676745	2021-10-17 19:57:27.676745
136	Bihar	BR	99	2021-10-17 19:57:27.68882	2021-10-17 19:57:27.68882
137	Chandigarh	CH	99	2021-10-17 19:57:27.700336	2021-10-17 19:57:27.700336
138	Chhattisgarh	CT	99	2021-10-17 19:57:27.712137	2021-10-17 19:57:27.712137
139	Daman and Diu	DD	99	2021-10-17 19:57:27.724706	2021-10-17 19:57:27.724706
140	Delhi	DL	99	2021-10-17 19:57:27.741719	2021-10-17 19:57:27.741719
141	Dadra and Nagar Haveli	DN	99	2021-10-17 19:57:27.754668	2021-10-17 19:57:27.754668
142	Goa	GA	99	2021-10-17 19:57:27.7664	2021-10-17 19:57:27.7664
143	Gujarat	GJ	99	2021-10-17 19:57:27.778305	2021-10-17 19:57:27.778305
144	Himachal Pradesh	HP	99	2021-10-17 19:57:27.790513	2021-10-17 19:57:27.790513
145	Haryana	HR	99	2021-10-17 19:57:27.803587	2021-10-17 19:57:27.803587
146	Jharkhand	JH	99	2021-10-17 19:57:27.815423	2021-10-17 19:57:27.815423
147	Jammu and Kashmir	JK	99	2021-10-17 19:57:27.827222	2021-10-17 19:57:27.827222
148	Karnataka	KA	99	2021-10-17 19:57:27.839059	2021-10-17 19:57:27.839059
149	Kerala	KL	99	2021-10-17 19:57:27.851241	2021-10-17 19:57:27.851241
150	Lakshadweep	LD	99	2021-10-17 19:57:27.863383	2021-10-17 19:57:27.863383
151	Maharashtra	MH	99	2021-10-17 19:57:27.875143	2021-10-17 19:57:27.875143
152	Meghalaya	ML	99	2021-10-17 19:57:27.886864	2021-10-17 19:57:27.886864
153	Manipur	MN	99	2021-10-17 19:57:27.898938	2021-10-17 19:57:27.898938
154	Madhya Pradesh	MP	99	2021-10-17 19:57:27.910934	2021-10-17 19:57:27.910934
155	Mizoram	MZ	99	2021-10-17 19:57:27.922771	2021-10-17 19:57:27.922771
156	Nagaland	NL	99	2021-10-17 19:57:27.93425	2021-10-17 19:57:27.93425
157	Odisha	OR	99	2021-10-17 19:57:27.945736	2021-10-17 19:57:27.945736
158	Punjab	PB	99	2021-10-17 19:57:27.957407	2021-10-17 19:57:27.957407
159	Puducherry	PY	99	2021-10-17 19:57:27.969302	2021-10-17 19:57:27.969302
160	Rajasthan	RJ	99	2021-10-17 19:57:27.980999	2021-10-17 19:57:27.980999
161	Sikkim	SK	99	2021-10-17 19:57:27.993179	2021-10-17 19:57:27.993179
162	Telangana	TG	99	2021-10-17 19:57:28.010242	2021-10-17 19:57:28.010242
163	Tamil Nadu	TN	99	2021-10-17 19:57:28.022909	2021-10-17 19:57:28.022909
164	Tripura	TR	99	2021-10-17 19:57:28.035626	2021-10-17 19:57:28.035626
165	Uttar Pradesh	UP	99	2021-10-17 19:57:28.048377	2021-10-17 19:57:28.048377
166	Uttarakhand	UT	99	2021-10-17 19:57:28.061095	2021-10-17 19:57:28.061095
167	West Bengal	WB	99	2021-10-17 19:57:28.073598	2021-10-17 19:57:28.073598
168	Alessandria	AL	103	2021-10-17 19:57:28.090065	2021-10-17 19:57:28.090065
169	Asti	AT	103	2021-10-17 19:57:28.102515	2021-10-17 19:57:28.102515
170	Biella	BI	103	2021-10-17 19:57:28.115223	2021-10-17 19:57:28.115223
171	Cuneo	CN	103	2021-10-17 19:57:28.127454	2021-10-17 19:57:28.127454
172	Novara	NO	103	2021-10-17 19:57:28.139612	2021-10-17 19:57:28.139612
173	Torino	TO	103	2021-10-17 19:57:28.152263	2021-10-17 19:57:28.152263
174	Verbano-Cusio-Ossola	VB	103	2021-10-17 19:57:28.164526	2021-10-17 19:57:28.164526
175	Vercelli	VC	103	2021-10-17 19:57:28.183099	2021-10-17 19:57:28.183099
176	Aosta	AO	103	2021-10-17 19:57:28.196428	2021-10-17 19:57:28.196428
177	Bergamo	BG	103	2021-10-17 19:57:28.209681	2021-10-17 19:57:28.209681
178	Brescia	BS	103	2021-10-17 19:57:28.222317	2021-10-17 19:57:28.222317
179	Como	CO	103	2021-10-17 19:57:28.235203	2021-10-17 19:57:28.235203
180	Cremona	CR	103	2021-10-17 19:57:28.248903	2021-10-17 19:57:28.248903
181	Lecco	LC	103	2021-10-17 19:57:28.265878	2021-10-17 19:57:28.265878
182	Lodi	LO	103	2021-10-17 19:57:28.278644	2021-10-17 19:57:28.278644
183	Monza e Brianza	MB	103	2021-10-17 19:57:28.29101	2021-10-17 19:57:28.29101
184	Milano	MI	103	2021-10-17 19:57:28.303972	2021-10-17 19:57:28.303972
185	Mantova	MN	103	2021-10-17 19:57:28.316799	2021-10-17 19:57:28.316799
186	Pavia	PV	103	2021-10-17 19:57:28.32912	2021-10-17 19:57:28.32912
187	Sondrio	SO	103	2021-10-17 19:57:28.341328	2021-10-17 19:57:28.341328
188	Varese	VA	103	2021-10-17 19:57:28.353574	2021-10-17 19:57:28.353574
189	Bolzano	BZ	103	2021-10-17 19:57:28.365905	2021-10-17 19:57:28.365905
190	Trento	TN	103	2021-10-17 19:57:28.378009	2021-10-17 19:57:28.378009
191	Belluno	BL	103	2021-10-17 19:57:28.391033	2021-10-17 19:57:28.391033
192	Padova	PD	103	2021-10-17 19:57:28.404341	2021-10-17 19:57:28.404341
193	Rovigo	RO	103	2021-10-17 19:57:28.416853	2021-10-17 19:57:28.416853
194	Treviso	TV	103	2021-10-17 19:57:28.429018	2021-10-17 19:57:28.429018
195	Venezia	VE	103	2021-10-17 19:57:28.440794	2021-10-17 19:57:28.440794
196	Vicenza	VI	103	2021-10-17 19:57:28.452732	2021-10-17 19:57:28.452732
197	Verona	VR	103	2021-10-17 19:57:28.464497	2021-10-17 19:57:28.464497
198	Gorizia	GO	103	2021-10-17 19:57:28.476918	2021-10-17 19:57:28.476918
199	Pordenone	PN	103	2021-10-17 19:57:28.488774	2021-10-17 19:57:28.488774
200	Trieste	TS	103	2021-10-17 19:57:28.500514	2021-10-17 19:57:28.500514
201	Udine	UD	103	2021-10-17 19:57:28.51279	2021-10-17 19:57:28.51279
202	Genova	GE	103	2021-10-17 19:57:28.524961	2021-10-17 19:57:28.524961
203	Imperia	IM	103	2021-10-17 19:57:28.536784	2021-10-17 19:57:28.536784
204	La Spezia	SP	103	2021-10-17 19:57:28.548682	2021-10-17 19:57:28.548682
205	Savona	SV	103	2021-10-17 19:57:28.560343	2021-10-17 19:57:28.560343
206	Bologna	BO	103	2021-10-17 19:57:28.575083	2021-10-17 19:57:28.575083
207	Forlì-Cesena	FC	103	2021-10-17 19:57:28.58713	2021-10-17 19:57:28.58713
208	Ferrara	FE	103	2021-10-17 19:57:28.59912	2021-10-17 19:57:28.59912
209	Modena	MO	103	2021-10-17 19:57:28.610256	2021-10-17 19:57:28.610256
210	Piacenza	PC	103	2021-10-17 19:57:28.622324	2021-10-17 19:57:28.622324
211	Parma	PR	103	2021-10-17 19:57:28.634599	2021-10-17 19:57:28.634599
212	Ravenna	RA	103	2021-10-17 19:57:28.646297	2021-10-17 19:57:28.646297
213	Reggio Emilia	RE	103	2021-10-17 19:57:28.657906	2021-10-17 19:57:28.657906
214	Rimini	RN	103	2021-10-17 19:57:28.670021	2021-10-17 19:57:28.670021
215	Arezzo	AR	103	2021-10-17 19:57:28.68432	2021-10-17 19:57:28.68432
216	Firenze	FI	103	2021-10-17 19:57:28.69649	2021-10-17 19:57:28.69649
217	Grosseto	GR	103	2021-10-17 19:57:28.711718	2021-10-17 19:57:28.711718
218	Livorno	LI	103	2021-10-17 19:57:28.724273	2021-10-17 19:57:28.724273
219	Lucca	LU	103	2021-10-17 19:57:28.73662	2021-10-17 19:57:28.73662
220	Massa-Carrara	MS	103	2021-10-17 19:57:28.751416	2021-10-17 19:57:28.751416
221	Pisa	PI	103	2021-10-17 19:57:28.763682	2021-10-17 19:57:28.763682
222	Prato	PO	103	2021-10-17 19:57:28.780072	2021-10-17 19:57:28.780072
223	Pistoia	PT	103	2021-10-17 19:57:28.792123	2021-10-17 19:57:28.792123
224	Siena	SI	103	2021-10-17 19:57:28.804101	2021-10-17 19:57:28.804101
225	Perugia	PG	103	2021-10-17 19:57:28.817237	2021-10-17 19:57:28.817237
226	Terni	TR	103	2021-10-17 19:57:28.829501	2021-10-17 19:57:28.829501
227	Ancona	AN	103	2021-10-17 19:57:28.842338	2021-10-17 19:57:28.842338
228	Ascoli Piceno	AP	103	2021-10-17 19:57:28.854748	2021-10-17 19:57:28.854748
229	Fermo	FM	103	2021-10-17 19:57:28.866635	2021-10-17 19:57:28.866635
230	Macerata	MC	103	2021-10-17 19:57:28.878789	2021-10-17 19:57:28.878789
231	Pesaro e Urbino	PU	103	2021-10-17 19:57:28.892107	2021-10-17 19:57:28.892107
232	Frosinone	FR	103	2021-10-17 19:57:28.905253	2021-10-17 19:57:28.905253
233	Latina	LT	103	2021-10-17 19:57:28.917861	2021-10-17 19:57:28.917861
234	Rieti	RI	103	2021-10-17 19:57:28.930093	2021-10-17 19:57:28.930093
235	Roma	RM	103	2021-10-17 19:57:28.942026	2021-10-17 19:57:28.942026
236	Viterbo	VT	103	2021-10-17 19:57:28.954213	2021-10-17 19:57:28.954213
237	L'Aquila	AQ	103	2021-10-17 19:57:28.966589	2021-10-17 19:57:28.966589
238	Chieti	CH	103	2021-10-17 19:57:28.978269	2021-10-17 19:57:28.978269
239	Pescara	PE	103	2021-10-17 19:57:28.990479	2021-10-17 19:57:28.990479
240	Teramo	TE	103	2021-10-17 19:57:29.003021	2021-10-17 19:57:29.003021
241	Campobasso	CB	103	2021-10-17 19:57:29.015398	2021-10-17 19:57:29.015398
242	Isernia	IS	103	2021-10-17 19:57:29.027984	2021-10-17 19:57:29.027984
243	Avellino	AV	103	2021-10-17 19:57:29.041004	2021-10-17 19:57:29.041004
244	Benevento	BN	103	2021-10-17 19:57:29.056526	2021-10-17 19:57:29.056526
245	Caserta	CE	103	2021-10-17 19:57:29.071627	2021-10-17 19:57:29.071627
246	Napoli	NA	103	2021-10-17 19:57:29.084887	2021-10-17 19:57:29.084887
247	Salerno	SA	103	2021-10-17 19:57:29.097158	2021-10-17 19:57:29.097158
248	Bari	BA	103	2021-10-17 19:57:29.109578	2021-10-17 19:57:29.109578
249	Brindisi	BR	103	2021-10-17 19:57:29.121841	2021-10-17 19:57:29.121841
250	Barletta-Andria-Trani	BT	103	2021-10-17 19:57:29.133743	2021-10-17 19:57:29.133743
251	Foggia	FG	103	2021-10-17 19:57:29.152574	2021-10-17 19:57:29.152574
252	Lecce	LE	103	2021-10-17 19:57:29.165357	2021-10-17 19:57:29.165357
253	Taranto	TA	103	2021-10-17 19:57:29.177409	2021-10-17 19:57:29.177409
254	Matera	MT	103	2021-10-17 19:57:29.190322	2021-10-17 19:57:29.190322
255	Potenza	PZ	103	2021-10-17 19:57:29.203702	2021-10-17 19:57:29.203702
256	Cosenza	CS	103	2021-10-17 19:57:29.216353	2021-10-17 19:57:29.216353
257	Catanzaro	CZ	103	2021-10-17 19:57:29.228469	2021-10-17 19:57:29.228469
258	Crotone	KR	103	2021-10-17 19:57:29.240773	2021-10-17 19:57:29.240773
259	Reggio Calabria	RC	103	2021-10-17 19:57:29.253725	2021-10-17 19:57:29.253725
260	Vibo Valentia	VV	103	2021-10-17 19:57:29.265917	2021-10-17 19:57:29.265917
261	Agrigento	AG	103	2021-10-17 19:57:29.279482	2021-10-17 19:57:29.279482
262	Caltanissetta	CL	103	2021-10-17 19:57:29.292551	2021-10-17 19:57:29.292551
263	Catania	CT	103	2021-10-17 19:57:29.309378	2021-10-17 19:57:29.309378
264	Enna	EN	103	2021-10-17 19:57:29.322304	2021-10-17 19:57:29.322304
265	Messina	ME	103	2021-10-17 19:57:29.335334	2021-10-17 19:57:29.335334
266	Palermo	PA	103	2021-10-17 19:57:29.348434	2021-10-17 19:57:29.348434
267	Ragusa	RG	103	2021-10-17 19:57:29.363005	2021-10-17 19:57:29.363005
268	Siracusa	SR	103	2021-10-17 19:57:29.375905	2021-10-17 19:57:29.375905
269	Trapani	TP	103	2021-10-17 19:57:29.388747	2021-10-17 19:57:29.388747
270	Cagliari	CA	103	2021-10-17 19:57:29.40245	2021-10-17 19:57:29.40245
271	Carbonia-Iglesias	CI	103	2021-10-17 19:57:29.41543	2021-10-17 19:57:29.41543
272	Nuoro	NU	103	2021-10-17 19:57:29.429173	2021-10-17 19:57:29.429173
273	Ogliastra	OG	103	2021-10-17 19:57:29.441872	2021-10-17 19:57:29.441872
274	Oristano	OR	103	2021-10-17 19:57:29.454607	2021-10-17 19:57:29.454607
275	Olbia-Tempio	OT	103	2021-10-17 19:57:29.466919	2021-10-17 19:57:29.466919
276	Sassari	SS	103	2021-10-17 19:57:29.481866	2021-10-17 19:57:29.481866
277	Medio Campidano	VS	103	2021-10-17 19:57:29.494653	2021-10-17 19:57:29.494653
278	Aguascalientes	AGU	150	2021-10-17 19:57:29.511742	2021-10-17 19:57:29.511742
279	Baja California	BCN	150	2021-10-17 19:57:29.524185	2021-10-17 19:57:29.524185
280	Baja California Sur	BCS	150	2021-10-17 19:57:29.536432	2021-10-17 19:57:29.536432
281	Campeche	CAM	150	2021-10-17 19:57:29.54845	2021-10-17 19:57:29.54845
282	Chihuahua	CHH	150	2021-10-17 19:57:29.560779	2021-10-17 19:57:29.560779
283	Chiapas	CHP	150	2021-10-17 19:57:29.573201	2021-10-17 19:57:29.573201
284	Ciudad de México	CMX	150	2021-10-17 19:57:29.585692	2021-10-17 19:57:29.585692
285	Coahuila de Zaragoza	COA	150	2021-10-17 19:57:29.598042	2021-10-17 19:57:29.598042
286	Colima	COL	150	2021-10-17 19:57:29.609771	2021-10-17 19:57:29.609771
287	Durango	DUR	150	2021-10-17 19:57:29.621512	2021-10-17 19:57:29.621512
288	Guerrero	GRO	150	2021-10-17 19:57:29.633142	2021-10-17 19:57:29.633142
289	Guanajuato	GUA	150	2021-10-17 19:57:29.64534	2021-10-17 19:57:29.64534
290	Hidalgo	HID	150	2021-10-17 19:57:29.657024	2021-10-17 19:57:29.657024
291	Jalisco	JAL	150	2021-10-17 19:57:29.668741	2021-10-17 19:57:29.668741
292	México	MEX	150	2021-10-17 19:57:29.680628	2021-10-17 19:57:29.680628
293	Michoacán de Ocampo	MIC	150	2021-10-17 19:57:29.692852	2021-10-17 19:57:29.692852
294	Morelos	MOR	150	2021-10-17 19:57:29.704496	2021-10-17 19:57:29.704496
295	Nayarit	NAY	150	2021-10-17 19:57:29.716551	2021-10-17 19:57:29.716551
296	Nuevo León	NLE	150	2021-10-17 19:57:29.728042	2021-10-17 19:57:29.728042
297	Oaxaca	OAX	150	2021-10-17 19:57:29.739556	2021-10-17 19:57:29.739556
298	Puebla	PUE	150	2021-10-17 19:57:29.751092	2021-10-17 19:57:29.751092
299	Querétaro	QUE	150	2021-10-17 19:57:29.763766	2021-10-17 19:57:29.763766
300	Quintana Roo	ROO	150	2021-10-17 19:57:29.777993	2021-10-17 19:57:29.777993
301	Sinaloa	SIN	150	2021-10-17 19:57:29.791005	2021-10-17 19:57:29.791005
302	San Luis Potosí	SLP	150	2021-10-17 19:57:29.803291	2021-10-17 19:57:29.803291
303	Sonora	SON	150	2021-10-17 19:57:29.819877	2021-10-17 19:57:29.819877
304	Tabasco	TAB	150	2021-10-17 19:57:29.832091	2021-10-17 19:57:29.832091
305	Tamaulipas	TAM	150	2021-10-17 19:57:29.844383	2021-10-17 19:57:29.844383
306	Tlaxcala	TLA	150	2021-10-17 19:57:29.856215	2021-10-17 19:57:29.856215
307	Veracruz de Ignacio de la Llave	VER	150	2021-10-17 19:57:29.868198	2021-10-17 19:57:29.868198
308	Yucatán	YUC	150	2021-10-17 19:57:29.87999	2021-10-17 19:57:29.87999
309	Zacatecas	ZAC	150	2021-10-17 19:57:29.89209	2021-10-17 19:57:29.89209
310	Johor	01	151	2021-10-17 19:57:29.907722	2021-10-17 19:57:29.907722
311	Kedah	02	151	2021-10-17 19:57:29.921157	2021-10-17 19:57:29.921157
312	Kelantan	03	151	2021-10-17 19:57:29.932904	2021-10-17 19:57:29.932904
313	Melaka	04	151	2021-10-17 19:57:29.944475	2021-10-17 19:57:29.944475
314	Negeri Sembilan	05	151	2021-10-17 19:57:29.955926	2021-10-17 19:57:29.955926
315	Pahang	06	151	2021-10-17 19:57:29.967859	2021-10-17 19:57:29.967859
316	Pulau Pinang	07	151	2021-10-17 19:57:29.979177	2021-10-17 19:57:29.979177
317	Perak	08	151	2021-10-17 19:57:29.992988	2021-10-17 19:57:29.992988
318	Perlis	09	151	2021-10-17 19:57:30.029745	2021-10-17 19:57:30.029745
319	Selangor	10	151	2021-10-17 19:57:30.060614	2021-10-17 19:57:30.060614
320	Terengganu	11	151	2021-10-17 19:57:30.079683	2021-10-17 19:57:30.079683
321	Sabah	12	151	2021-10-17 19:57:30.09766	2021-10-17 19:57:30.09766
322	Sarawak	13	151	2021-10-17 19:57:30.114842	2021-10-17 19:57:30.114842
323	Wilayah Persekutuan Kuala Lumpur	14	151	2021-10-17 19:57:30.127906	2021-10-17 19:57:30.127906
324	Wilayah Persekutuan Labuan	15	151	2021-10-17 19:57:30.140722	2021-10-17 19:57:30.140722
325	Wilayah Persekutuan Putrajaya	16	151	2021-10-17 19:57:30.153589	2021-10-17 19:57:30.153589
326	Chatham Islands Territory	CIT	164	2021-10-17 19:57:30.172832	2021-10-17 19:57:30.172832
327	Auckland	AUK	164	2021-10-17 19:57:30.187866	2021-10-17 19:57:30.187866
328	Bay of Plenty	BOP	164	2021-10-17 19:57:30.200451	2021-10-17 19:57:30.200451
329	Canterbury	CAN	164	2021-10-17 19:57:30.215414	2021-10-17 19:57:30.215414
330	Gisborne	GIS	164	2021-10-17 19:57:30.228697	2021-10-17 19:57:30.228697
331	Hawke's Bay	HKB	164	2021-10-17 19:57:30.24181	2021-10-17 19:57:30.24181
332	Manawatu-Wanganui	MWT	164	2021-10-17 19:57:30.254497	2021-10-17 19:57:30.254497
333	Marlborough	MBH	164	2021-10-17 19:57:30.267886	2021-10-17 19:57:30.267886
334	Nelson	NSN	164	2021-10-17 19:57:30.28045	2021-10-17 19:57:30.28045
335	Northland	NTL	164	2021-10-17 19:57:30.294207	2021-10-17 19:57:30.294207
336	Otago	OTA	164	2021-10-17 19:57:30.307168	2021-10-17 19:57:30.307168
337	Southland	STL	164	2021-10-17 19:57:30.323895	2021-10-17 19:57:30.323895
338	Taranaki	TKI	164	2021-10-17 19:57:30.343629	2021-10-17 19:57:30.343629
339	Tasman	TAS	164	2021-10-17 19:57:30.357139	2021-10-17 19:57:30.357139
340	Wellington	WGN	164	2021-10-17 19:57:30.370877	2021-10-17 19:57:30.370877
341	Waikato	WKO	164	2021-10-17 19:57:30.388834	2021-10-17 19:57:30.388834
342	West Coast	WTC	164	2021-10-17 19:57:30.401626	2021-10-17 19:57:30.401626
343	Aveiro	01	177	2021-10-17 19:57:30.421577	2021-10-17 19:57:30.421577
344	Beja	02	177	2021-10-17 19:57:30.434185	2021-10-17 19:57:30.434185
345	Braga	03	177	2021-10-17 19:57:30.447863	2021-10-17 19:57:30.447863
346	Bragança	04	177	2021-10-17 19:57:30.461056	2021-10-17 19:57:30.461056
347	Castelo Branco	05	177	2021-10-17 19:57:30.47303	2021-10-17 19:57:30.47303
348	Coimbra	06	177	2021-10-17 19:57:30.485686	2021-10-17 19:57:30.485686
349	Évora	07	177	2021-10-17 19:57:30.49776	2021-10-17 19:57:30.49776
350	Faro	08	177	2021-10-17 19:57:30.509733	2021-10-17 19:57:30.509733
351	Guarda	09	177	2021-10-17 19:57:30.524214	2021-10-17 19:57:30.524214
352	Leiria	10	177	2021-10-17 19:57:30.53746	2021-10-17 19:57:30.53746
353	Lisboa	11	177	2021-10-17 19:57:30.550421	2021-10-17 19:57:30.550421
354	Portalegre	12	177	2021-10-17 19:57:30.563031	2021-10-17 19:57:30.563031
355	Porto	13	177	2021-10-17 19:57:30.575344	2021-10-17 19:57:30.575344
356	Santarém	14	177	2021-10-17 19:57:30.587804	2021-10-17 19:57:30.587804
357	Setúbal	15	177	2021-10-17 19:57:30.600571	2021-10-17 19:57:30.600571
358	Viana do Castelo	16	177	2021-10-17 19:57:30.612878	2021-10-17 19:57:30.612878
359	Vila Real	17	177	2021-10-17 19:57:30.627168	2021-10-17 19:57:30.627168
360	Viseu	18	177	2021-10-17 19:57:30.639405	2021-10-17 19:57:30.639405
361	Região Autónoma dos Açores	20	177	2021-10-17 19:57:30.652239	2021-10-17 19:57:30.652239
362	Região Autónoma da Madeira	30	177	2021-10-17 19:57:30.664499	2021-10-17 19:57:30.664499
363	Alba	AB	182	2021-10-17 19:57:30.681869	2021-10-17 19:57:30.681869
364	Argeș	AG	182	2021-10-17 19:57:30.694834	2021-10-17 19:57:30.694834
365	Arad	AR	182	2021-10-17 19:57:30.706868	2021-10-17 19:57:30.706868
366	București	B	182	2021-10-17 19:57:30.7187	2021-10-17 19:57:30.7187
367	Bacău	BC	182	2021-10-17 19:57:30.731678	2021-10-17 19:57:30.731678
368	Bihor	BH	182	2021-10-17 19:57:30.744868	2021-10-17 19:57:30.744868
369	Bistrița-Năsăud	BN	182	2021-10-17 19:57:30.757633	2021-10-17 19:57:30.757633
370	Brăila	BR	182	2021-10-17 19:57:30.770153	2021-10-17 19:57:30.770153
371	Botoșani	BT	182	2021-10-17 19:57:30.782541	2021-10-17 19:57:30.782541
372	Brașov	BV	182	2021-10-17 19:57:30.797288	2021-10-17 19:57:30.797288
373	Buzău	BZ	182	2021-10-17 19:57:30.811223	2021-10-17 19:57:30.811223
374	Cluj	CJ	182	2021-10-17 19:57:30.823634	2021-10-17 19:57:30.823634
375	Călărași	CL	182	2021-10-17 19:57:30.8361	2021-10-17 19:57:30.8361
376	Caraș-Severin	CS	182	2021-10-17 19:57:30.848441	2021-10-17 19:57:30.848441
377	Constanța	CT	182	2021-10-17 19:57:30.862246	2021-10-17 19:57:30.862246
378	Covasna	CV	182	2021-10-17 19:57:30.879344	2021-10-17 19:57:30.879344
379	Dâmbovița	DB	182	2021-10-17 19:57:30.894742	2021-10-17 19:57:30.894742
380	Dolj	DJ	182	2021-10-17 19:57:30.907581	2021-10-17 19:57:30.907581
381	Gorj	GJ	182	2021-10-17 19:57:30.920669	2021-10-17 19:57:30.920669
382	Galați	GL	182	2021-10-17 19:57:30.932915	2021-10-17 19:57:30.932915
383	Giurgiu	GR	182	2021-10-17 19:57:30.945289	2021-10-17 19:57:30.945289
384	Hunedoara	HD	182	2021-10-17 19:57:30.957446	2021-10-17 19:57:30.957446
385	Harghita	HR	182	2021-10-17 19:57:30.969343	2021-10-17 19:57:30.969343
386	Ilfov	IF	182	2021-10-17 19:57:30.981698	2021-10-17 19:57:30.981698
387	Ialomița	IL	182	2021-10-17 19:57:30.994607	2021-10-17 19:57:30.994607
388	Iași	IS	182	2021-10-17 19:57:31.010242	2021-10-17 19:57:31.010242
389	Mehedinți	MH	182	2021-10-17 19:57:31.022542	2021-10-17 19:57:31.022542
390	Maramureș	MM	182	2021-10-17 19:57:31.035312	2021-10-17 19:57:31.035312
391	Mureș	MS	182	2021-10-17 19:57:31.048423	2021-10-17 19:57:31.048423
392	Neamț	NT	182	2021-10-17 19:57:31.060609	2021-10-17 19:57:31.060609
393	Olt	OT	182	2021-10-17 19:57:31.07302	2021-10-17 19:57:31.07302
394	Prahova	PH	182	2021-10-17 19:57:31.086568	2021-10-17 19:57:31.086568
395	Sibiu	SB	182	2021-10-17 19:57:31.099077	2021-10-17 19:57:31.099077
396	Sălaj	SJ	182	2021-10-17 19:57:31.111225	2021-10-17 19:57:31.111225
397	Satu Mare	SM	182	2021-10-17 19:57:31.123575	2021-10-17 19:57:31.123575
398	Suceava	SV	182	2021-10-17 19:57:31.136463	2021-10-17 19:57:31.136463
399	Tulcea	TL	182	2021-10-17 19:57:31.149078	2021-10-17 19:57:31.149078
400	Timiș	TM	182	2021-10-17 19:57:31.161392	2021-10-17 19:57:31.161392
401	Teleorman	TR	182	2021-10-17 19:57:31.174741	2021-10-17 19:57:31.174741
402	Vâlcea	VL	182	2021-10-17 19:57:31.188474	2021-10-17 19:57:31.188474
403	Vrancea	VN	182	2021-10-17 19:57:31.20092	2021-10-17 19:57:31.20092
404	Vaslui	VS	182	2021-10-17 19:57:31.219462	2021-10-17 19:57:31.219462
405	Krung Thep Maha Nakhon Bangkok	10	210	2021-10-17 19:57:31.239507	2021-10-17 19:57:31.239507
406	Samut Prakan	11	210	2021-10-17 19:57:31.251638	2021-10-17 19:57:31.251638
407	Nonthaburi	12	210	2021-10-17 19:57:31.264295	2021-10-17 19:57:31.264295
408	Pathum Thani	13	210	2021-10-17 19:57:31.276562	2021-10-17 19:57:31.276562
409	Phra Nakhon Si Ayutthaya	14	210	2021-10-17 19:57:31.289642	2021-10-17 19:57:31.289642
410	Ang Thong	15	210	2021-10-17 19:57:31.302131	2021-10-17 19:57:31.302131
411	Lop Buri	16	210	2021-10-17 19:57:31.314664	2021-10-17 19:57:31.314664
412	Sing Buri	17	210	2021-10-17 19:57:31.32743	2021-10-17 19:57:31.32743
413	Chai Nat	18	210	2021-10-17 19:57:31.339872	2021-10-17 19:57:31.339872
414	Saraburi	19	210	2021-10-17 19:57:31.352398	2021-10-17 19:57:31.352398
415	Chon Buri	20	210	2021-10-17 19:57:31.365532	2021-10-17 19:57:31.365532
416	Rayong	21	210	2021-10-17 19:57:31.382936	2021-10-17 19:57:31.382936
417	Chanthaburi	22	210	2021-10-17 19:57:31.397997	2021-10-17 19:57:31.397997
418	Trat	23	210	2021-10-17 19:57:31.410778	2021-10-17 19:57:31.410778
419	Chachoengsao	24	210	2021-10-17 19:57:31.423117	2021-10-17 19:57:31.423117
420	Prachin Buri	25	210	2021-10-17 19:57:31.436688	2021-10-17 19:57:31.436688
421	Nakhon Nayok	26	210	2021-10-17 19:57:31.44936	2021-10-17 19:57:31.44936
422	Sa Kaeo	27	210	2021-10-17 19:57:31.461226	2021-10-17 19:57:31.461226
423	Nakhon Ratchasima	30	210	2021-10-17 19:57:31.473902	2021-10-17 19:57:31.473902
424	Buri Ram	31	210	2021-10-17 19:57:31.486062	2021-10-17 19:57:31.486062
425	Surin	32	210	2021-10-17 19:57:31.500873	2021-10-17 19:57:31.500873
426	Si Sa Ket	33	210	2021-10-17 19:57:31.513534	2021-10-17 19:57:31.513534
427	Ubon Ratchathani	34	210	2021-10-17 19:57:31.525997	2021-10-17 19:57:31.525997
428	Yasothon	35	210	2021-10-17 19:57:31.538577	2021-10-17 19:57:31.538577
429	Chaiyaphum	36	210	2021-10-17 19:57:31.551175	2021-10-17 19:57:31.551175
430	Amnat Charoen	37	210	2021-10-17 19:57:31.564285	2021-10-17 19:57:31.564285
431	Nong Bua Lam Phu	39	210	2021-10-17 19:57:31.576846	2021-10-17 19:57:31.576846
432	Khon Kaen	40	210	2021-10-17 19:57:31.589421	2021-10-17 19:57:31.589421
433	Udon Thani	41	210	2021-10-17 19:57:31.602011	2021-10-17 19:57:31.602011
434	Loei	42	210	2021-10-17 19:57:31.616181	2021-10-17 19:57:31.616181
435	Nong Khai	43	210	2021-10-17 19:57:31.627776	2021-10-17 19:57:31.627776
436	Maha Sarakham	44	210	2021-10-17 19:57:31.641495	2021-10-17 19:57:31.641495
437	Roi Et	45	210	2021-10-17 19:57:31.653857	2021-10-17 19:57:31.653857
438	Kalasin	46	210	2021-10-17 19:57:31.666116	2021-10-17 19:57:31.666116
439	Sakon Nakhon	47	210	2021-10-17 19:57:31.679758	2021-10-17 19:57:31.679758
440	Nakhon Phanom	48	210	2021-10-17 19:57:31.691647	2021-10-17 19:57:31.691647
441	Mukdahan	49	210	2021-10-17 19:57:31.704433	2021-10-17 19:57:31.704433
442	Chiang Mai	50	210	2021-10-17 19:57:31.716936	2021-10-17 19:57:31.716936
443	Lamphun	51	210	2021-10-17 19:57:31.728843	2021-10-17 19:57:31.728843
444	Lampang	52	210	2021-10-17 19:57:31.740702	2021-10-17 19:57:31.740702
445	Uttaradit	53	210	2021-10-17 19:57:31.753451	2021-10-17 19:57:31.753451
446	Phrae	54	210	2021-10-17 19:57:31.766002	2021-10-17 19:57:31.766002
447	Nan	55	210	2021-10-17 19:57:31.77836	2021-10-17 19:57:31.77836
448	Phayao	56	210	2021-10-17 19:57:31.790291	2021-10-17 19:57:31.790291
560	Kilkenny	KK	96	2021-10-17 19:57:33.263716	2021-10-17 19:57:33.263716
449	Chiang Rai	57	210	2021-10-17 19:57:31.802459	2021-10-17 19:57:31.802459
450	Mae Hong Son	58	210	2021-10-17 19:57:31.820778	2021-10-17 19:57:31.820778
451	Nakhon Sawan	60	210	2021-10-17 19:57:31.833638	2021-10-17 19:57:31.833638
452	Uthai Thani	61	210	2021-10-17 19:57:31.845909	2021-10-17 19:57:31.845909
453	Kamphaeng Phet	62	210	2021-10-17 19:57:31.858153	2021-10-17 19:57:31.858153
454	Tak	63	210	2021-10-17 19:57:31.87093	2021-10-17 19:57:31.87093
455	Sukhothai	64	210	2021-10-17 19:57:31.88779	2021-10-17 19:57:31.88779
456	Phitsanulok	65	210	2021-10-17 19:57:31.899696	2021-10-17 19:57:31.899696
457	Phichit	66	210	2021-10-17 19:57:31.91222	2021-10-17 19:57:31.91222
458	Phetchabun	67	210	2021-10-17 19:57:31.924454	2021-10-17 19:57:31.924454
459	Ratchaburi	70	210	2021-10-17 19:57:31.937504	2021-10-17 19:57:31.937504
460	Kanchanaburi	71	210	2021-10-17 19:57:31.949635	2021-10-17 19:57:31.949635
461	Suphan Buri	72	210	2021-10-17 19:57:31.961108	2021-10-17 19:57:31.961108
462	Nakhon Pathom	73	210	2021-10-17 19:57:31.973022	2021-10-17 19:57:31.973022
463	Samut Sakhon	74	210	2021-10-17 19:57:31.986254	2021-10-17 19:57:31.986254
464	Samut Songkhram	75	210	2021-10-17 19:57:31.998288	2021-10-17 19:57:31.998288
465	Phetchaburi	76	210	2021-10-17 19:57:32.012649	2021-10-17 19:57:32.012649
466	Prachuap Khiri Khan	77	210	2021-10-17 19:57:32.026345	2021-10-17 19:57:32.026345
467	Nakhon Si Thammarat	80	210	2021-10-17 19:57:32.040166	2021-10-17 19:57:32.040166
468	Krabi	81	210	2021-10-17 19:57:32.052713	2021-10-17 19:57:32.052713
469	Phangnga	82	210	2021-10-17 19:57:32.065014	2021-10-17 19:57:32.065014
470	Phuket	83	210	2021-10-17 19:57:32.077578	2021-10-17 19:57:32.077578
471	Surat Thani	84	210	2021-10-17 19:57:32.090663	2021-10-17 19:57:32.090663
472	Ranong	85	210	2021-10-17 19:57:32.103027	2021-10-17 19:57:32.103027
473	Chumphon	86	210	2021-10-17 19:57:32.116056	2021-10-17 19:57:32.116056
474	Songkhla	90	210	2021-10-17 19:57:32.128979	2021-10-17 19:57:32.128979
475	Satun	91	210	2021-10-17 19:57:32.14162	2021-10-17 19:57:32.14162
476	Trang	92	210	2021-10-17 19:57:32.15429	2021-10-17 19:57:32.15429
477	Phatthalung	93	210	2021-10-17 19:57:32.166478	2021-10-17 19:57:32.166478
478	Pattani	94	210	2021-10-17 19:57:32.179637	2021-10-17 19:57:32.179637
479	Yala	95	210	2021-10-17 19:57:32.19248	2021-10-17 19:57:32.19248
480	Narathiwat	96	210	2021-10-17 19:57:32.205078	2021-10-17 19:57:32.205078
481	Phatthaya	S	210	2021-10-17 19:57:32.218391	2021-10-17 19:57:32.218391
482	Alaska	AK	224	2021-10-17 19:57:32.239382	2021-10-17 19:57:32.239382
483	Alabama	AL	224	2021-10-17 19:57:32.252827	2021-10-17 19:57:32.252827
484	Arkansas	AR	224	2021-10-17 19:57:32.266338	2021-10-17 19:57:32.266338
485	Arizona	AZ	224	2021-10-17 19:57:32.279897	2021-10-17 19:57:32.279897
486	California	CA	224	2021-10-17 19:57:32.292651	2021-10-17 19:57:32.292651
487	Colorado	CO	224	2021-10-17 19:57:32.305076	2021-10-17 19:57:32.305076
488	Connecticut	CT	224	2021-10-17 19:57:32.321335	2021-10-17 19:57:32.321335
489	District of Columbia	DC	224	2021-10-17 19:57:32.334791	2021-10-17 19:57:32.334791
490	Delaware	DE	224	2021-10-17 19:57:32.348321	2021-10-17 19:57:32.348321
491	Florida	FL	224	2021-10-17 19:57:32.36179	2021-10-17 19:57:32.36179
492	Georgia	GA	224	2021-10-17 19:57:32.380008	2021-10-17 19:57:32.380008
493	Hawaii	HI	224	2021-10-17 19:57:32.392019	2021-10-17 19:57:32.392019
494	Iowa	IA	224	2021-10-17 19:57:32.404855	2021-10-17 19:57:32.404855
495	Idaho	ID	224	2021-10-17 19:57:32.417134	2021-10-17 19:57:32.417134
496	Illinois	IL	224	2021-10-17 19:57:32.431309	2021-10-17 19:57:32.431309
497	Indiana	IN	224	2021-10-17 19:57:32.44356	2021-10-17 19:57:32.44356
498	Kansas	KS	224	2021-10-17 19:57:32.455647	2021-10-17 19:57:32.455647
499	Kentucky	KY	224	2021-10-17 19:57:32.467704	2021-10-17 19:57:32.467704
500	Louisiana	LA	224	2021-10-17 19:57:32.480208	2021-10-17 19:57:32.480208
501	Massachusetts	MA	224	2021-10-17 19:57:32.492427	2021-10-17 19:57:32.492427
502	Maryland	MD	224	2021-10-17 19:57:32.504109	2021-10-17 19:57:32.504109
503	Maine	ME	224	2021-10-17 19:57:32.515784	2021-10-17 19:57:32.515784
504	Michigan	MI	224	2021-10-17 19:57:32.5282	2021-10-17 19:57:32.5282
505	Minnesota	MN	224	2021-10-17 19:57:32.543667	2021-10-17 19:57:32.543667
506	Missouri	MO	224	2021-10-17 19:57:32.556654	2021-10-17 19:57:32.556654
507	Mississippi	MS	224	2021-10-17 19:57:32.568895	2021-10-17 19:57:32.568895
508	Montana	MT	224	2021-10-17 19:57:32.581013	2021-10-17 19:57:32.581013
509	North Carolina	NC	224	2021-10-17 19:57:32.593861	2021-10-17 19:57:32.593861
510	North Dakota	ND	224	2021-10-17 19:57:32.606476	2021-10-17 19:57:32.606476
511	Nebraska	NE	224	2021-10-17 19:57:32.618776	2021-10-17 19:57:32.618776
512	New Hampshire	NH	224	2021-10-17 19:57:32.631316	2021-10-17 19:57:32.631316
513	New Jersey	NJ	224	2021-10-17 19:57:32.644923	2021-10-17 19:57:32.644923
514	New Mexico	NM	224	2021-10-17 19:57:32.657993	2021-10-17 19:57:32.657993
515	Nevada	NV	224	2021-10-17 19:57:32.67044	2021-10-17 19:57:32.67044
516	New York	NY	224	2021-10-17 19:57:32.682793	2021-10-17 19:57:32.682793
517	Ohio	OH	224	2021-10-17 19:57:32.694955	2021-10-17 19:57:32.694955
518	Oklahoma	OK	224	2021-10-17 19:57:32.706967	2021-10-17 19:57:32.706967
519	Oregon	OR	224	2021-10-17 19:57:32.720325	2021-10-17 19:57:32.720325
520	Pennsylvania	PA	224	2021-10-17 19:57:32.73368	2021-10-17 19:57:32.73368
521	Rhode Island	RI	224	2021-10-17 19:57:32.746282	2021-10-17 19:57:32.746282
522	South Carolina	SC	224	2021-10-17 19:57:32.758881	2021-10-17 19:57:32.758881
523	South Dakota	SD	224	2021-10-17 19:57:32.771258	2021-10-17 19:57:32.771258
524	Tennessee	TN	224	2021-10-17 19:57:32.783457	2021-10-17 19:57:32.783457
525	Texas	TX	224	2021-10-17 19:57:32.795736	2021-10-17 19:57:32.795736
526	Utah	UT	224	2021-10-17 19:57:32.80783	2021-10-17 19:57:32.80783
527	Virginia	VA	224	2021-10-17 19:57:32.819856	2021-10-17 19:57:32.819856
528	Vermont	VT	224	2021-10-17 19:57:32.831849	2021-10-17 19:57:32.831849
529	Washington	WA	224	2021-10-17 19:57:32.843989	2021-10-17 19:57:32.843989
530	Wisconsin	WI	224	2021-10-17 19:57:32.856689	2021-10-17 19:57:32.856689
531	West Virginia	WV	224	2021-10-17 19:57:32.873681	2021-10-17 19:57:32.873681
532	Wyoming	WY	224	2021-10-17 19:57:32.886332	2021-10-17 19:57:32.886332
533	Armed Forces Americas (except Canada)	AA	224	2021-10-17 19:57:32.898573	2021-10-17 19:57:32.898573
534	Armed Forces Africa, Canada, Europe, Middle East	AE	224	2021-10-17 19:57:32.910638	2021-10-17 19:57:32.910638
535	Armed Forces Pacific	AP	224	2021-10-17 19:57:32.922843	2021-10-17 19:57:32.922843
536	Eastern Cape	EC	238	2021-10-17 19:57:32.941562	2021-10-17 19:57:32.941562
537	Free State	FS	238	2021-10-17 19:57:32.953894	2021-10-17 19:57:32.953894
538	Gauteng	GT	238	2021-10-17 19:57:32.966412	2021-10-17 19:57:32.966412
539	Limpopo	LP	238	2021-10-17 19:57:32.979227	2021-10-17 19:57:32.979227
540	Mpumalanga	MP	238	2021-10-17 19:57:32.991385	2021-10-17 19:57:32.991385
541	Northern Cape	NC	238	2021-10-17 19:57:33.006528	2021-10-17 19:57:33.006528
542	Kwazulu-Natal	NL	238	2021-10-17 19:57:33.019704	2021-10-17 19:57:33.019704
543	North-West (South Africa)	NW	238	2021-10-17 19:57:33.032786	2021-10-17 19:57:33.032786
544	Western Cape	WC	238	2021-10-17 19:57:33.045123	2021-10-17 19:57:33.045123
545	'Ajmān	AJ	2	2021-10-17 19:57:33.058469	2021-10-17 19:57:33.058469
546	Abū Ȥaby [Abu Dhabi]	AZ	2	2021-10-17 19:57:33.071117	2021-10-17 19:57:33.071117
547	Dubayy	DU	2	2021-10-17 19:57:33.084454	2021-10-17 19:57:33.084454
548	Al Fujayrah	FU	2	2021-10-17 19:57:33.098948	2021-10-17 19:57:33.098948
549	Ra’s al Khaymah	RK	2	2021-10-17 19:57:33.11227	2021-10-17 19:57:33.11227
550	Ash Shāriqah	SH	2	2021-10-17 19:57:33.12524	2021-10-17 19:57:33.12524
551	Umm al Qaywayn	UQ	2	2021-10-17 19:57:33.139938	2021-10-17 19:57:33.139938
552	Galway	G	96	2021-10-17 19:57:33.158487	2021-10-17 19:57:33.158487
553	Leitrim	LM	96	2021-10-17 19:57:33.171268	2021-10-17 19:57:33.171268
554	Mayo	MO	96	2021-10-17 19:57:33.184317	2021-10-17 19:57:33.184317
555	Roscommon	RN	96	2021-10-17 19:57:33.197257	2021-10-17 19:57:33.197257
556	Sligo	SO	96	2021-10-17 19:57:33.210164	2021-10-17 19:57:33.210164
557	Carlow	CW	96	2021-10-17 19:57:33.223693	2021-10-17 19:57:33.223693
558	Dublin	D	96	2021-10-17 19:57:33.236977	2021-10-17 19:57:33.236977
559	Kildare	KE	96	2021-10-17 19:57:33.249936	2021-10-17 19:57:33.249936
561	Longford	LD	96	2021-10-17 19:57:33.276656	2021-10-17 19:57:33.276656
562	Louth	LH	96	2021-10-17 19:57:33.2894	2021-10-17 19:57:33.2894
563	Laois	LS	96	2021-10-17 19:57:33.302017	2021-10-17 19:57:33.302017
564	Meath	MH	96	2021-10-17 19:57:33.314638	2021-10-17 19:57:33.314638
565	Offaly	OY	96	2021-10-17 19:57:33.327858	2021-10-17 19:57:33.327858
566	Westmeath	WH	96	2021-10-17 19:57:33.341243	2021-10-17 19:57:33.341243
567	Wicklow	WW	96	2021-10-17 19:57:33.358599	2021-10-17 19:57:33.358599
568	Wexford	WX	96	2021-10-17 19:57:33.371318	2021-10-17 19:57:33.371318
569	Clare	CE	96	2021-10-17 19:57:33.385159	2021-10-17 19:57:33.385159
570	Cork	CO	96	2021-10-17 19:57:33.399276	2021-10-17 19:57:33.399276
571	Kerry	KY	96	2021-10-17 19:57:33.411551	2021-10-17 19:57:33.411551
572	Limerick	LK	96	2021-10-17 19:57:33.424718	2021-10-17 19:57:33.424718
573	Tipperary	TA	96	2021-10-17 19:57:33.438006	2021-10-17 19:57:33.438006
574	Waterford	WD	96	2021-10-17 19:57:33.450381	2021-10-17 19:57:33.450381
575	Cavan	CN	96	2021-10-17 19:57:33.46349	2021-10-17 19:57:33.46349
576	Donegal	DL	96	2021-10-17 19:57:33.47742	2021-10-17 19:57:33.47742
577	Monaghan	MN	96	2021-10-17 19:57:33.490025	2021-10-17 19:57:33.490025
\.


--
-- Data for Name: spree_stock_items; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) FROM stdin;
2	1	2	-20	2021-10-17 22:06:18.988551	2021-10-20 17:53:08.163159	t	\N
1	1	1	-18	2021-10-17 22:02:36.159555	2021-10-20 17:53:08.246322	t	\N
3	1	3	0	2021-10-20 18:00:16.894552	2021-10-20 18:00:16.894552	t	\N
\.


--
-- Data for Name: spree_stock_locations; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_stock_locations (id, name, created_at, updated_at, "default", address1, address2, city, state_id, state_name, country_id, zipcode, phone, active, backorderable_default, propagate_all_variants, admin_name) FROM stdin;
1	default	2021-10-17 19:57:04.426579	2021-10-17 19:57:04.426579	f	\N	\N	\N	\N	\N	\N	\N	\N	t	t	t	\N
\.


--
-- Data for Name: spree_stock_movements; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_stock_movements (id, stock_item_id, quantity, action, created_at, updated_at, originator_type, originator_id) FROM stdin;
1	2	-10	\N	2021-10-18 20:04:26.442262	2021-10-18 20:04:26.442262	Spree::Shipment	1
2	1	-6	\N	2021-10-18 20:04:26.517121	2021-10-18 20:04:26.517121	Spree::Shipment	1
3	1	-3	\N	2021-10-20 17:24:48.227388	2021-10-20 17:24:48.227388	Spree::Shipment	2
4	2	-10	\N	2021-10-20 17:53:08.134977	2021-10-20 17:53:08.134977	Spree::Shipment	3
5	1	-9	\N	2021-10-20 17:53:08.212872	2021-10-20 17:53:08.212872	Spree::Shipment	3
\.


--
-- Data for Name: spree_stock_transfers; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_stock_transfers (id, type, reference, source_location_id, destination_location_id, created_at, updated_at, number) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_categories; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_store_credit_categories (id, name, created_at, updated_at) FROM stdin;
1	Default	2021-10-17 19:57:33.507205	2021-10-17 19:57:33.507205
\.


--
-- Data for Name: spree_store_credit_events; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_store_credit_events (id, store_credit_id, action, amount, authorization_code, user_total_amount, originator_id, originator_type, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_types; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_store_credit_types (id, name, priority, created_at, updated_at) FROM stdin;
1	Expiring	1	2021-10-17 19:57:07.743655	2021-10-17 19:57:07.743655
2	Non-expiring	2	2021-10-17 19:57:07.748065	2021-10-17 19:57:07.748065
\.


--
-- Data for Name: spree_store_credits; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_store_credits (id, user_id, category_id, created_by_id, amount, amount_used, memo, deleted_at, currency, amount_authorized, originator_id, originator_type, type_id, created_at, updated_at, store_id) FROM stdin;
\.


--
-- Data for Name: spree_stores; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_stores (id, name, url, meta_description, meta_keywords, seo_title, mail_from_address, default_currency, code, "default", created_at, updated_at, supported_currencies, facebook, twitter, instagram, default_locale, customer_support_email, default_country_id, description, address, contact_phone, new_order_notifications_email, checkout_zone_id, seo_robots, supported_locales, deleted_at) FROM stdin;
1	Retebio	retebio.it	This is the new Spree UX DEMO | OVERVIEW: http://bit.ly/new-spree-ux | DOCS: http://bit.ly/spree-ux-customization-docs | CONTACT: https://spreecommerce.org/contact/		Spree Commerce Demo Shop	spree@example.com	EUR	retebio	t	2021-10-17 19:57:05.911294	2021-10-20 18:00:16.914677	EUR				it		103					1		it,en	\N
\.


--
-- Data for Name: spree_tax_categories; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_tax_categories (id, name, description, is_default, deleted_at, created_at, updated_at, tax_code) FROM stdin;
1	iva4	IVA4	f	\N	2021-10-17 20:26:55.391292	2021-10-17 20:26:55.391292	IVA4
2	iva10	IVA10	f	\N	2021-10-17 20:27:07.888077	2021-10-17 20:27:07.888077	IVA10
3	iva22	IVA22	f	\N	2021-10-17 20:27:22.405657	2021-10-17 20:27:22.405657	IVA22
4	iva5	IVA5	f	\N	2021-10-17 20:27:35.237504	2021-10-17 20:27:35.237504	IVA5
\.


--
-- Data for Name: spree_tax_rates; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_tax_rates (id, amount, zone_id, tax_category_id, included_in_price, created_at, updated_at, name, show_rate_in_label, deleted_at) FROM stdin;
1	0.04000	1	1	f	2021-10-17 20:33:07.57048	2021-10-17 20:33:07.57048	IVA4	t	\N
2	0.10000	1	2	f	2021-10-17 20:33:34.813985	2021-10-17 20:33:34.813985	IVA10	t	\N
3	0.05000	1	4	f	2021-10-17 20:33:50.741868	2021-10-17 20:33:50.741868	IVA5	t	\N
4	0.22000	1	3	f	2021-10-17 20:34:10.576173	2021-10-17 20:34:10.576173	IVA22	t	\N
\.


--
-- Data for Name: spree_taxonomies; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_taxonomies (id, name, created_at, updated_at, "position", store_id) FROM stdin;
2	Promozione	2021-10-20 17:21:42.197064	2021-10-20 17:53:08.201258	2	1
1	Categorie	2021-10-17 22:09:27.666103	2021-10-20 18:12:45.204446	1	1
\.


--
-- Data for Name: spree_taxons; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hide_from_nav) FROM stdin;
2	1	0	Verdura	verdura/new-node	1	2	11	\N	2021-10-17 22:09:39.241152	2021-10-20 18:12:45.198381	\N	\N	\N	1	f
1	\N	0	Categorie	verdura	1	1	16	\N	2021-10-17 22:09:27.708321	2021-10-20 18:12:45.198381	\N	\N	\N	0	f
8	2	0	Tuberi	verdura/new-node/tuberi	1	9	10	\N	2021-10-18 19:53:04.547647	2021-10-18 19:53:04.583308	\N	\N	\N	2	f
4	1	0	Frutta	verdura/frutta	1	14	15	\N	2021-10-18 19:38:59.995014	2021-10-20 17:53:08.197602	\N	\N	\N	1	f
10	\N	0	Promozione	promozione	2	17	18	\N	2021-10-20 17:21:42.222698	2021-10-20 17:53:08.197602	\N	\N	\N	0	f
5	2	0	Orticole	verdura/new-node/orticole	1	3	4	\N	2021-10-18 19:52:36.931058	2021-10-20 17:53:08.271719	\N	\N	\N	2	f
6	2	0	Cereali	verdura/new-node/cereali	1	5	6	\N	2021-10-18 19:52:46.344915	2021-10-18 19:52:46.370596	\N	\N	\N	2	f
7	2	0	Legumi	verdura/new-node/legumi	1	7	8	\N	2021-10-18 19:52:51.577636	2021-10-18 19:52:51.60381	\N	\N	\N	2	f
3	1	0	Trasformati	verdura/trasformati	1	12	13	\N	2021-10-18 19:38:20.483846	2021-10-18 19:56:26.130016	\N	\N	\N	1	f
\.


--
-- Data for Name: spree_trackers; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_trackers (id, analytics_id, active, created_at, updated_at, engine) FROM stdin;
\.


--
-- Data for Name: spree_users; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_users (id, encrypted_password, password_salt, email, remember_token, persistence_token, reset_password_token, perishable_token, sign_in_count, failed_attempts, last_request_at, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, login, ship_address_id, bill_address_id, authentication_token, unlock_token, locked_at, reset_password_sent_at, created_at, updated_at, spree_api_key, remember_created_at, deleted_at, confirmation_token, confirmed_at, confirmation_sent_at) FROM stdin;
2	dc4eff29742a9da0c3e88547eef277e8448af5c0d8797ce9a2cd2b196dc356e3b889fa8eb968d3eed10ac85de40f408ffd8fb2641ba90c8f056abea175f12081	9yoo_uEkJm8zsFxrkRXW	gruppobio@email.it	shd9W5CzJiWooNaPgknq	\N	\N	\N	7	0	\N	2021-12-18 11:10:08.655653	2021-12-04 16:13:43.062685	5.88.179.140	5.88.179.140	gruppobio@email.it	\N	\N	\N	\N	\N	\N	2021-10-18 12:56:23.318981	2021-12-18 11:10:08.656367	0110093bc0225fc15c561097f971a818f043f2460351b59c	2021-12-04 16:13:43.052746	\N	\N	\N	\N
1	b3cc082c08eda9da267eae0e5f5a79d907defaf6fb6454a70be05a2875f1e02ef0a07957014be91df14c87a4b7e60d05e64e9b934caa23abf512670272885a25	2Ln9-mrwBB37fHyustn1	spree@example.com	\N	\N	\N	\N	3	0	\N	2021-12-27 14:33:19.760971	2021-10-20 17:16:34.280679	95.247.67.173	5.88.179.140	spree@example.com	\N	\N	\N	\N	\N	\N	2021-10-17 19:57:35.580166	2021-12-27 14:33:19.761809	8e39ba96fce05bdc7d6aa76dd80195f6cdec6eaf3ea43242	\N	\N	\N	\N	\N
\.


--
-- Data for Name: spree_variants; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, discontinue_on, created_at) FROM stdin;
2	LBC-DE	5.00	\N	\N	\N	\N	t	2	\N	1	EUR	t	\N	2021-10-20 17:53:08.170421	\N	2021-10-17 22:06:18.958203
1	GLF-GAL	3.00	\N	\N	\N	\N	t	1	\N	1	EUR	t	\N	2021-10-20 17:53:08.250306	\N	2021-10-17 22:02:36.074775
3		1.00	\N	\N	\N	\N	t	3	\N	1	EUR	t	\N	2021-10-20 18:02:05.256246	\N	2021-10-20 18:00:16.862617
\.


--
-- Data for Name: spree_zone_members; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_zone_members (id, zoneable_type, zoneable_id, zone_id, created_at, updated_at) FROM stdin;
1	Spree::Country	172	1	2021-10-17 19:57:33.714869	2021-10-17 19:57:33.714869
2	Spree::Country	66	1	2021-10-17 19:57:33.72989	2021-10-17 19:57:33.72989
3	Spree::Country	177	1	2021-10-17 19:57:33.74475	2021-10-17 19:57:33.74475
4	Spree::Country	182	1	2021-10-17 19:57:33.758755	2021-10-17 19:57:33.758755
5	Spree::Country	54	1	2021-10-17 19:57:33.773062	2021-10-17 19:57:33.773062
6	Spree::Country	71	1	2021-10-17 19:57:33.78653	2021-10-17 19:57:33.78653
7	Spree::Country	195	1	2021-10-17 19:57:33.800565	2021-10-17 19:57:33.800565
8	Spree::Country	94	1	2021-10-17 19:57:33.814568	2021-10-17 19:57:33.814568
9	Spree::Country	193	1	2021-10-17 19:57:33.828297	2021-10-17 19:57:33.828297
10	Spree::Country	96	1	2021-10-17 19:57:33.84231	2021-10-17 19:57:33.84231
11	Spree::Country	11	1	2021-10-17 19:57:33.865156	2021-10-17 19:57:33.865156
12	Spree::Country	64	1	2021-10-17 19:57:33.879739	2021-10-17 19:57:33.879739
13	Spree::Country	103	1	2021-10-17 19:57:33.894317	2021-10-17 19:57:33.894317
14	Spree::Country	18	1	2021-10-17 19:57:33.908104	2021-10-17 19:57:33.908104
15	Spree::Country	190	1	2021-10-17 19:57:33.921883	2021-10-17 19:57:33.921883
16	Spree::Country	128	1	2021-10-17 19:57:33.936121	2021-10-17 19:57:33.936121
17	Spree::Country	20	1	2021-10-17 19:57:33.950032	2021-10-17 19:57:33.950032
18	Spree::Country	126	1	2021-10-17 19:57:33.963809	2021-10-17 19:57:33.963809
19	Spree::Country	52	1	2021-10-17 19:57:33.977851	2021-10-17 19:57:33.977851
20	Spree::Country	127	1	2021-10-17 19:57:33.99183	2021-10-17 19:57:33.99183
21	Spree::Country	146	1	2021-10-17 19:57:34.010319	2021-10-17 19:57:34.010319
22	Spree::Country	56	1	2021-10-17 19:57:34.024916	2021-10-17 19:57:34.024916
23	Spree::Country	159	1	2021-10-17 19:57:34.040245	2021-10-17 19:57:34.040245
24	Spree::Country	61	1	2021-10-17 19:57:34.054017	2021-10-17 19:57:34.054017
25	Spree::Country	92	1	2021-10-17 19:57:34.068933	2021-10-17 19:57:34.068933
26	Spree::Country	53	1	2021-10-17 19:57:34.086026	2021-10-17 19:57:34.086026
27	Spree::Country	85	1	2021-10-17 19:57:34.099756	2021-10-17 19:57:34.099756
28	Spree::Country	73	2	2021-10-17 19:57:34.113504	2021-10-17 19:57:34.113504
29	Spree::Country	224	3	2021-10-17 19:57:34.127524	2021-10-17 19:57:34.127524
30	Spree::Country	35	3	2021-10-17 19:57:34.14151	2021-10-17 19:57:34.14151
31	Spree::Country	21	5	2021-10-17 19:57:34.155623	2021-10-17 19:57:34.155623
32	Spree::Country	52	5	2021-10-17 19:57:34.170839	2021-10-17 19:57:34.170839
33	Spree::Country	62	5	2021-10-17 19:57:34.186543	2021-10-17 19:57:34.186543
34	Spree::Country	101	5	2021-10-17 19:57:34.201188	2021-10-17 19:57:34.201188
35	Spree::Country	100	5	2021-10-17 19:57:34.215316	2021-10-17 19:57:34.215316
36	Spree::Country	97	5	2021-10-17 19:57:34.229547	2021-10-17 19:57:34.229547
37	Spree::Country	106	5	2021-10-17 19:57:34.246463	2021-10-17 19:57:34.246463
38	Spree::Country	116	5	2021-10-17 19:57:34.260753	2021-10-17 19:57:34.260753
39	Spree::Country	120	5	2021-10-17 19:57:34.280933	2021-10-17 19:57:34.280933
40	Spree::Country	165	5	2021-10-17 19:57:34.295717	2021-10-17 19:57:34.295717
41	Spree::Country	180	5	2021-10-17 19:57:34.309827	2021-10-17 19:57:34.309827
42	Spree::Country	186	5	2021-10-17 19:57:34.324324	2021-10-17 19:57:34.324324
43	Spree::Country	205	5	2021-10-17 19:57:34.33819	2021-10-17 19:57:34.33819
44	Spree::Country	217	5	2021-10-17 19:57:34.358764	2021-10-17 19:57:34.358764
45	Spree::Country	2	5	2021-10-17 19:57:34.372801	2021-10-17 19:57:34.372801
46	Spree::Country	236	5	2021-10-17 19:57:34.386314	2021-10-17 19:57:34.386314
47	Spree::Country	3	6	2021-10-17 19:57:34.400408	2021-10-17 19:57:34.400408
48	Spree::Country	7	6	2021-10-17 19:57:34.413695	2021-10-17 19:57:34.413695
49	Spree::Country	14	6	2021-10-17 19:57:34.426878	2021-10-17 19:57:34.426878
50	Spree::Country	21	6	2021-10-17 19:57:34.440272	2021-10-17 19:57:34.440272
51	Spree::Country	17	6	2021-10-17 19:57:34.453645	2021-10-17 19:57:34.453645
52	Spree::Country	31	6	2021-10-17 19:57:34.466638	2021-10-17 19:57:34.466638
53	Spree::Country	26	6	2021-10-17 19:57:34.480577	2021-10-17 19:57:34.480577
54	Spree::Country	110	6	2021-10-17 19:57:34.497135	2021-10-17 19:57:34.497135
55	Spree::Country	45	6	2021-10-17 19:57:34.512985	2021-10-17 19:57:34.512985
56	Spree::Country	51	6	2021-10-17 19:57:34.527962	2021-10-17 19:57:34.527962
57	Spree::Country	36	6	2021-10-17 19:57:34.543038	2021-10-17 19:57:34.543038
58	Spree::Country	75	6	2021-10-17 19:57:34.55652	2021-10-17 19:57:34.55652
59	Spree::Country	90	6	2021-10-17 19:57:34.569564	2021-10-17 19:57:34.569564
60	Spree::Country	99	6	2021-10-17 19:57:34.58359	2021-10-17 19:57:34.58359
61	Spree::Country	95	6	2021-10-17 19:57:34.597219	2021-10-17 19:57:34.597219
62	Spree::Country	101	6	2021-10-17 19:57:34.610806	2021-10-17 19:57:34.610806
63	Spree::Country	100	6	2021-10-17 19:57:34.624082	2021-10-17 19:57:34.624082
64	Spree::Country	97	6	2021-10-17 19:57:34.637355	2021-10-17 19:57:34.637355
65	Spree::Country	107	6	2021-10-17 19:57:34.650908	2021-10-17 19:57:34.650908
66	Spree::Country	106	6	2021-10-17 19:57:34.66526	2021-10-17 19:57:34.66526
67	Spree::Country	118	6	2021-10-17 19:57:34.678597	2021-10-17 19:57:34.678597
68	Spree::Country	116	6	2021-10-17 19:57:34.694501	2021-10-17 19:57:34.694501
69	Spree::Country	109	6	2021-10-17 19:57:34.708815	2021-10-17 19:57:34.708815
70	Spree::Country	119	6	2021-10-17 19:57:34.722492	2021-10-17 19:57:34.722492
71	Spree::Country	120	6	2021-10-17 19:57:34.735825	2021-10-17 19:57:34.735825
72	Spree::Country	141	6	2021-10-17 19:57:34.749088	2021-10-17 19:57:34.749088
73	Spree::Country	151	6	2021-10-17 19:57:34.762494	2021-10-17 19:57:34.762494
74	Spree::Country	148	6	2021-10-17 19:57:34.775722	2021-10-17 19:57:34.775722
75	Spree::Country	140	6	2021-10-17 19:57:34.789	2021-10-17 19:57:34.789
76	Spree::Country	139	6	2021-10-17 19:57:34.803725	2021-10-17 19:57:34.803725
77	Spree::Country	161	6	2021-10-17 19:57:34.82352	2021-10-17 19:57:34.82352
78	Spree::Country	114	6	2021-10-17 19:57:34.837316	2021-10-17 19:57:34.837316
79	Spree::Country	165	6	2021-10-17 19:57:34.852667	2021-10-17 19:57:34.852667
80	Spree::Country	171	6	2021-10-17 19:57:34.868266	2021-10-17 19:57:34.868266
81	Spree::Country	176	6	2021-10-17 19:57:34.882893	2021-10-17 19:57:34.882893
82	Spree::Country	170	6	2021-10-17 19:57:34.89784	2021-10-17 19:57:34.89784
83	Spree::Country	180	6	2021-10-17 19:57:34.911121	2021-10-17 19:57:34.911121
84	Spree::Country	186	6	2021-10-17 19:57:34.924189	2021-10-17 19:57:34.924189
85	Spree::Country	191	6	2021-10-17 19:57:34.937788	2021-10-17 19:57:34.937788
86	Spree::Country	115	6	2021-10-17 19:57:34.952931	2021-10-17 19:57:34.952931
87	Spree::Country	123	6	2021-10-17 19:57:34.965683	2021-10-17 19:57:34.965683
88	Spree::Country	205	6	2021-10-17 19:57:34.98778	2021-10-17 19:57:34.98778
89	Spree::Country	220	6	2021-10-17 19:57:35.048979	2021-10-17 19:57:35.048979
90	Spree::Country	211	6	2021-10-17 19:57:35.118391	2021-10-17 19:57:35.118391
91	Spree::Country	210	6	2021-10-17 19:57:35.154559	2021-10-17 19:57:35.154559
92	Spree::Country	217	6	2021-10-17 19:57:35.170871	2021-10-17 19:57:35.170871
93	Spree::Country	214	6	2021-10-17 19:57:35.186851	2021-10-17 19:57:35.186851
94	Spree::Country	2	6	2021-10-17 19:57:35.201621	2021-10-17 19:57:35.201621
95	Spree::Country	226	6	2021-10-17 19:57:35.216964	2021-10-17 19:57:35.216964
96	Spree::Country	232	6	2021-10-17 19:57:35.235705	2021-10-17 19:57:35.235705
97	Spree::Country	236	6	2021-10-17 19:57:35.253408	2021-10-17 19:57:35.253408
98	Spree::Country	9	4	2021-10-17 19:57:35.270808	2021-10-17 19:57:35.270808
99	Spree::Country	27	4	2021-10-17 19:57:35.286814	2021-10-17 19:57:35.286814
100	Spree::Country	29	4	2021-10-17 19:57:35.302106	2021-10-17 19:57:35.302106
101	Spree::Country	43	4	2021-10-17 19:57:35.315192	2021-10-17 19:57:35.315192
102	Spree::Country	46	4	2021-10-17 19:57:35.32799	2021-10-17 19:57:35.32799
103	Spree::Country	60	4	2021-10-17 19:57:35.340923	2021-10-17 19:57:35.340923
104	Spree::Country	68	4	2021-10-17 19:57:35.353806	2021-10-17 19:57:35.353806
105	Spree::Country	76	4	2021-10-17 19:57:35.367317	2021-10-17 19:57:35.367317
106	Spree::Country	89	4	2021-10-17 19:57:35.381228	2021-10-17 19:57:35.381228
107	Spree::Country	179	4	2021-10-17 19:57:35.394589	2021-10-17 19:57:35.394589
108	Spree::Country	167	4	2021-10-17 19:57:35.407465	2021-10-17 19:57:35.407465
109	Spree::Country	200	4	2021-10-17 19:57:35.420798	2021-10-17 19:57:35.420798
110	Spree::Country	225	4	2021-10-17 19:57:35.43935	2021-10-17 19:57:35.43935
111	Spree::Country	229	4	2021-10-17 19:57:35.453856	2021-10-17 19:57:35.453856
112	Spree::Country	103	7	2021-10-17 20:35:03.492051	2021-10-17 20:35:03.492051
\.


--
-- Data for Name: spree_zones; Type: TABLE DATA; Schema: public; Owner: retebio
--

COPY public.spree_zones (id, name, description, default_tax, zone_members_count, created_at, updated_at, kind) FROM stdin;
6	Asia	Asia	f	51	2021-10-17 19:57:33.691401	2021-10-17 19:57:33.691401	country
1	EU_VAT	Countries that make up the EU VAT zone.	f	27	2021-10-17 19:57:33.634785	2021-10-17 19:57:33.634785	country
2	UK_VAT	\N	f	1	2021-10-17 19:57:33.65044	2021-10-17 19:57:33.65044	country
3	North America	USA + Canada	f	2	2021-10-17 19:57:33.660851	2021-10-17 19:57:33.660851	country
4	South America	South America	f	14	2021-10-17 19:57:33.670416	2021-10-17 19:57:33.670416	country
7	Italia	Italia	f	1	2021-10-17 20:35:03.488277	2021-10-17 20:35:03.488277	country
5	Middle East	Middle East	f	16	2021-10-17 19:57:33.6811	2021-10-17 19:57:33.6811	country
\.


--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.action_mailbox_inbound_emails_id_seq', 1, false);


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 44, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 44, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 34, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 14, true);


--
-- Name: spree_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_addresses_id_seq', 2, true);


--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_adjustments_id_seq', 1, false);


--
-- Name: spree_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_assets_id_seq', 5, true);


--
-- Name: spree_calculators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_calculators_id_seq', 5, true);


--
-- Name: spree_checks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_checks_id_seq', 1, false);


--
-- Name: spree_cms_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_cms_pages_id_seq', 1, true);


--
-- Name: spree_cms_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_cms_sections_id_seq', 3, true);


--
-- Name: spree_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_countries_id_seq', 240, true);


--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_credit_cards_id_seq', 1, false);


--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_customer_returns_id_seq', 1, false);


--
-- Name: spree_gateways_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_gateways_id_seq', 1, false);


--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_inventory_units_id_seq', 5, true);


--
-- Name: spree_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_line_items_id_seq', 8, true);


--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_log_entries_id_seq', 1, false);


--
-- Name: spree_menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_menu_items_id_seq', 5, true);


--
-- Name: spree_menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_menus_id_seq', 1, true);


--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_oauth_access_grants_id_seq', 1, false);


--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_oauth_access_tokens_id_seq', 3, true);


--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_oauth_applications_id_seq', 1, true);


--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_option_type_prototypes_id_seq', 1, false);


--
-- Name: spree_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_option_types_id_seq', 1, false);


--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_option_value_variants_id_seq', 1, false);


--
-- Name: spree_option_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_option_values_id_seq', 1, false);


--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_order_promotions_id_seq', 1, false);


--
-- Name: spree_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_orders_id_seq', 5, true);


--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_payment_capture_events_id_seq', 1, false);


--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_payment_methods_id_seq', 1, true);


--
-- Name: spree_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_payments_id_seq', 3, true);


--
-- Name: spree_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_preferences_id_seq', 3, true);


--
-- Name: spree_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_prices_id_seq', 3, true);


--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_product_option_types_id_seq', 1, false);


--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_product_promotion_rules_id_seq', 1, false);


--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_product_properties_id_seq', 1, false);


--
-- Name: spree_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_products_id_seq', 3, true);


--
-- Name: spree_products_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_products_stores_id_seq', 3, true);


--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_products_taxons_id_seq', 4, true);


--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotion_action_line_items_id_seq', 1, false);


--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotion_actions_id_seq', 1, false);


--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotion_categories_id_seq', 1, false);


--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotion_rule_taxons_id_seq', 1, false);


--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotion_rule_users_id_seq', 1, false);


--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotion_rules_id_seq', 1, false);


--
-- Name: spree_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotions_id_seq', 1, false);


--
-- Name: spree_promotions_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_promotions_stores_id_seq', 1, false);


--
-- Name: spree_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_properties_id_seq', 1, false);


--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_property_prototypes_id_seq', 1, false);


--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_prototype_taxons_id_seq', 1, false);


--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_prototypes_id_seq', 1, false);


--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_refund_reasons_id_seq', 1, true);


--
-- Name: spree_refunds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_refunds_id_seq', 1, false);


--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_reimbursement_credits_id_seq', 1, false);


--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_reimbursement_types_id_seq', 1, true);


--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_reimbursements_id_seq', 1, false);


--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_return_authorization_reasons_id_seq', 9, true);


--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_return_authorizations_id_seq', 1, false);


--
-- Name: spree_return_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_return_items_id_seq', 1, false);


--
-- Name: spree_role_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_role_users_id_seq', 1, true);


--
-- Name: spree_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_roles_id_seq', 2, true);


--
-- Name: spree_shipments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_shipments_id_seq', 3, true);


--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_shipping_categories_id_seq', 4, true);


--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_shipping_method_categories_id_seq', 1, true);


--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_shipping_method_zones_id_seq', 1, true);


--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_shipping_methods_id_seq', 1, true);


--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_shipping_rates_id_seq', 3, true);


--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_state_changes_id_seq', 15, true);


--
-- Name: spree_states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_states_id_seq', 577, true);


--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_stock_items_id_seq', 3, true);


--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_stock_locations_id_seq', 1, true);


--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_stock_movements_id_seq', 5, true);


--
-- Name: spree_stock_transfers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_stock_transfers_id_seq', 1, false);


--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_store_credit_categories_id_seq', 1, true);


--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_store_credit_events_id_seq', 1, false);


--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_store_credit_types_id_seq', 2, true);


--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_store_credits_id_seq', 1, false);


--
-- Name: spree_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_stores_id_seq', 1, true);


--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_tax_categories_id_seq', 4, true);


--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_tax_rates_id_seq', 4, true);


--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_taxonomies_id_seq', 2, true);


--
-- Name: spree_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_taxons_id_seq', 10, true);


--
-- Name: spree_trackers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_trackers_id_seq', 1, false);


--
-- Name: spree_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_users_id_seq', 2, true);


--
-- Name: spree_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_variants_id_seq', 3, true);


--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_zone_members_id_seq', 112, true);


--
-- Name: spree_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: retebio
--

SELECT pg_catalog.setval('public.spree_zones_id_seq', 7, true);


--
-- Name: action_mailbox_inbound_emails action_mailbox_inbound_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails
    ADD CONSTRAINT action_mailbox_inbound_emails_pkey PRIMARY KEY (id);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: spree_addresses spree_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_addresses
    ADD CONSTRAINT spree_addresses_pkey PRIMARY KEY (id);


--
-- Name: spree_adjustments spree_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_adjustments
    ADD CONSTRAINT spree_adjustments_pkey PRIMARY KEY (id);


--
-- Name: spree_assets spree_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_assets
    ADD CONSTRAINT spree_assets_pkey PRIMARY KEY (id);


--
-- Name: spree_calculators spree_calculators_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_calculators
    ADD CONSTRAINT spree_calculators_pkey PRIMARY KEY (id);


--
-- Name: spree_checks spree_checks_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_checks
    ADD CONSTRAINT spree_checks_pkey PRIMARY KEY (id);


--
-- Name: spree_cms_pages spree_cms_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_cms_pages
    ADD CONSTRAINT spree_cms_pages_pkey PRIMARY KEY (id);


--
-- Name: spree_cms_sections spree_cms_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_cms_sections
    ADD CONSTRAINT spree_cms_sections_pkey PRIMARY KEY (id);


--
-- Name: spree_countries spree_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_countries
    ADD CONSTRAINT spree_countries_pkey PRIMARY KEY (id);


--
-- Name: spree_credit_cards spree_credit_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_credit_cards
    ADD CONSTRAINT spree_credit_cards_pkey PRIMARY KEY (id);


--
-- Name: spree_customer_returns spree_customer_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_customer_returns
    ADD CONSTRAINT spree_customer_returns_pkey PRIMARY KEY (id);


--
-- Name: spree_gateways spree_gateways_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_gateways
    ADD CONSTRAINT spree_gateways_pkey PRIMARY KEY (id);


--
-- Name: spree_inventory_units spree_inventory_units_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_inventory_units
    ADD CONSTRAINT spree_inventory_units_pkey PRIMARY KEY (id);


--
-- Name: spree_line_items spree_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_line_items
    ADD CONSTRAINT spree_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_log_entries spree_log_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_log_entries
    ADD CONSTRAINT spree_log_entries_pkey PRIMARY KEY (id);


--
-- Name: spree_menu_items spree_menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_menu_items
    ADD CONSTRAINT spree_menu_items_pkey PRIMARY KEY (id);


--
-- Name: spree_menus spree_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_menus
    ADD CONSTRAINT spree_menus_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_access_grants spree_oauth_access_grants_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_access_grants
    ADD CONSTRAINT spree_oauth_access_grants_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_access_tokens spree_oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_access_tokens
    ADD CONSTRAINT spree_oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_applications spree_oauth_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_applications
    ADD CONSTRAINT spree_oauth_applications_pkey PRIMARY KEY (id);


--
-- Name: spree_option_type_prototypes spree_option_type_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_type_prototypes
    ADD CONSTRAINT spree_option_type_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_option_types spree_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_types
    ADD CONSTRAINT spree_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_option_value_variants spree_option_value_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_value_variants
    ADD CONSTRAINT spree_option_value_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_option_values spree_option_values_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_option_values
    ADD CONSTRAINT spree_option_values_pkey PRIMARY KEY (id);


--
-- Name: spree_order_promotions spree_order_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_order_promotions
    ADD CONSTRAINT spree_order_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_orders spree_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_orders
    ADD CONSTRAINT spree_orders_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_capture_events spree_payment_capture_events_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_payment_capture_events
    ADD CONSTRAINT spree_payment_capture_events_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_methods spree_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_payment_methods
    ADD CONSTRAINT spree_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_payments spree_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_payments
    ADD CONSTRAINT spree_payments_pkey PRIMARY KEY (id);


--
-- Name: spree_preferences spree_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_preferences
    ADD CONSTRAINT spree_preferences_pkey PRIMARY KEY (id);


--
-- Name: spree_prices spree_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_prices
    ADD CONSTRAINT spree_prices_pkey PRIMARY KEY (id);


--
-- Name: spree_product_option_types spree_product_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_product_option_types
    ADD CONSTRAINT spree_product_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_product_promotion_rules spree_product_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_product_promotion_rules
    ADD CONSTRAINT spree_product_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_product_properties spree_product_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_product_properties
    ADD CONSTRAINT spree_product_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_products spree_products_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_products
    ADD CONSTRAINT spree_products_pkey PRIMARY KEY (id);


--
-- Name: spree_products_stores spree_products_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_products_stores
    ADD CONSTRAINT spree_products_stores_pkey PRIMARY KEY (id);


--
-- Name: spree_products_taxons spree_products_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_products_taxons
    ADD CONSTRAINT spree_products_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_action_line_items spree_promotion_action_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_action_line_items
    ADD CONSTRAINT spree_promotion_action_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_actions spree_promotion_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_actions
    ADD CONSTRAINT spree_promotion_actions_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_categories spree_promotion_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_categories
    ADD CONSTRAINT spree_promotion_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rule_taxons spree_promotion_rule_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons
    ADD CONSTRAINT spree_promotion_rule_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rule_users spree_promotion_rule_users_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_rule_users
    ADD CONSTRAINT spree_promotion_rule_users_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rules spree_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotion_rules
    ADD CONSTRAINT spree_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_promotions spree_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotions
    ADD CONSTRAINT spree_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_promotions_stores spree_promotions_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_promotions_stores
    ADD CONSTRAINT spree_promotions_stores_pkey PRIMARY KEY (id);


--
-- Name: spree_properties spree_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_properties
    ADD CONSTRAINT spree_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_property_prototypes spree_property_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_property_prototypes
    ADD CONSTRAINT spree_property_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_prototype_taxons spree_prototype_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_prototype_taxons
    ADD CONSTRAINT spree_prototype_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_prototypes spree_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_prototypes
    ADD CONSTRAINT spree_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_refund_reasons spree_refund_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_refund_reasons
    ADD CONSTRAINT spree_refund_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_refunds spree_refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_refunds
    ADD CONSTRAINT spree_refunds_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_credits spree_reimbursement_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_reimbursement_credits
    ADD CONSTRAINT spree_reimbursement_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_types spree_reimbursement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_reimbursement_types
    ADD CONSTRAINT spree_reimbursement_types_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursements spree_reimbursements_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_reimbursements
    ADD CONSTRAINT spree_reimbursements_pkey PRIMARY KEY (id);


--
-- Name: spree_return_authorization_reasons spree_return_authorization_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_return_authorization_reasons
    ADD CONSTRAINT spree_return_authorization_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_return_authorizations spree_return_authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_return_authorizations
    ADD CONSTRAINT spree_return_authorizations_pkey PRIMARY KEY (id);


--
-- Name: spree_return_items spree_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_return_items
    ADD CONSTRAINT spree_return_items_pkey PRIMARY KEY (id);


--
-- Name: spree_role_users spree_role_users_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_role_users
    ADD CONSTRAINT spree_role_users_pkey PRIMARY KEY (id);


--
-- Name: spree_roles spree_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_roles
    ADD CONSTRAINT spree_roles_pkey PRIMARY KEY (id);


--
-- Name: spree_shipments spree_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipments
    ADD CONSTRAINT spree_shipments_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_categories spree_shipping_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_categories
    ADD CONSTRAINT spree_shipping_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_categories spree_shipping_method_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_method_categories
    ADD CONSTRAINT spree_shipping_method_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_zones spree_shipping_method_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_method_zones
    ADD CONSTRAINT spree_shipping_method_zones_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_methods spree_shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_methods
    ADD CONSTRAINT spree_shipping_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_rates spree_shipping_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_shipping_rates
    ADD CONSTRAINT spree_shipping_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_state_changes spree_state_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_state_changes
    ADD CONSTRAINT spree_state_changes_pkey PRIMARY KEY (id);


--
-- Name: spree_states spree_states_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_states
    ADD CONSTRAINT spree_states_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_items spree_stock_items_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_items
    ADD CONSTRAINT spree_stock_items_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_locations spree_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_locations
    ADD CONSTRAINT spree_stock_locations_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_movements spree_stock_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_movements
    ADD CONSTRAINT spree_stock_movements_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_transfers spree_stock_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stock_transfers
    ADD CONSTRAINT spree_stock_transfers_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_categories spree_store_credit_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credit_categories
    ADD CONSTRAINT spree_store_credit_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_events spree_store_credit_events_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credit_events
    ADD CONSTRAINT spree_store_credit_events_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_types spree_store_credit_types_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credit_types
    ADD CONSTRAINT spree_store_credit_types_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credits spree_store_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_store_credits
    ADD CONSTRAINT spree_store_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_stores spree_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_stores
    ADD CONSTRAINT spree_stores_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_categories spree_tax_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_tax_categories
    ADD CONSTRAINT spree_tax_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_rates spree_tax_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_tax_rates
    ADD CONSTRAINT spree_tax_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_taxonomies spree_taxonomies_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_taxonomies
    ADD CONSTRAINT spree_taxonomies_pkey PRIMARY KEY (id);


--
-- Name: spree_taxons spree_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_taxons
    ADD CONSTRAINT spree_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_trackers spree_trackers_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_trackers
    ADD CONSTRAINT spree_trackers_pkey PRIMARY KEY (id);


--
-- Name: spree_users spree_users_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_users
    ADD CONSTRAINT spree_users_pkey PRIMARY KEY (id);


--
-- Name: spree_variants spree_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_variants
    ADD CONSTRAINT spree_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_zone_members spree_zone_members_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_zone_members
    ADD CONSTRAINT spree_zone_members_pkey PRIMARY KEY (id);


--
-- Name: spree_zones spree_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_zones
    ADD CONSTRAINT spree_zones_pkey PRIMARY KEY (id);


--
-- Name: email_idx_unique; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX email_idx_unique ON public.spree_users USING btree (email);


--
-- Name: index_action_mailbox_inbound_emails_uniqueness; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_action_mailbox_inbound_emails_uniqueness ON public.action_mailbox_inbound_emails USING btree (message_id, message_checksum);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_addresses_on_firstname; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_addresses_on_firstname ON public.spree_addresses USING btree (firstname);


--
-- Name: index_addresses_on_lastname; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_addresses_on_lastname ON public.spree_addresses USING btree (lastname);


--
-- Name: index_assets_on_viewable_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_assets_on_viewable_id ON public.spree_assets USING btree (viewable_id);


--
-- Name: index_assets_on_viewable_type_and_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_assets_on_viewable_type_and_type ON public.spree_assets USING btree (viewable_type, type);


--
-- Name: index_friendly_id_slugs_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_friendly_id_slugs_on_deleted_at ON public.friendly_id_slugs USING btree (deleted_at);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_id);


--
-- Name: index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type ON public.friendly_id_slugs USING btree (sluggable_type);


--
-- Name: index_inventory_units_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_inventory_units_on_order_id ON public.spree_inventory_units USING btree (order_id);


--
-- Name: index_inventory_units_on_shipment_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_inventory_units_on_shipment_id ON public.spree_inventory_units USING btree (shipment_id);


--
-- Name: index_inventory_units_on_variant_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_inventory_units_on_variant_id ON public.spree_inventory_units USING btree (variant_id);


--
-- Name: index_option_values_variants_on_variant_id_and_option_value_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_option_values_variants_on_variant_id_and_option_value_id ON public.spree_option_value_variants USING btree (variant_id, option_value_id);


--
-- Name: index_product_properties_on_product_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_product_properties_on_product_id ON public.spree_product_properties USING btree (product_id);


--
-- Name: index_products_promotion_rules_on_product_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_products_promotion_rules_on_product_id ON public.spree_product_promotion_rules USING btree (product_id);


--
-- Name: index_products_promotion_rules_on_promotion_rule_and_product; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_products_promotion_rules_on_promotion_rule_and_product ON public.spree_product_promotion_rules USING btree (promotion_rule_id, product_id);


--
-- Name: index_promotion_rules_on_product_group_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_promotion_rules_on_product_group_id ON public.spree_promotion_rules USING btree (product_group_id);


--
-- Name: index_promotion_rules_on_user_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_promotion_rules_on_user_id ON public.spree_promotion_rules USING btree (user_id);


--
-- Name: index_promotion_rules_users_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_promotion_rules_users_on_promotion_rule_id ON public.spree_promotion_rule_users USING btree (promotion_rule_id);


--
-- Name: index_promotion_rules_users_on_user_id_and_promotion_rule_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_promotion_rules_users_on_user_id_and_promotion_rule_id ON public.spree_promotion_rule_users USING btree (user_id, promotion_rule_id);


--
-- Name: index_property_prototypes_on_prototype_id_and_property_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_property_prototypes_on_prototype_id_and_property_id ON public.spree_property_prototypes USING btree (prototype_id, property_id);


--
-- Name: index_refunds_on_refund_reason_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_refunds_on_refund_reason_id ON public.spree_refunds USING btree (refund_reason_id);


--
-- Name: index_reimbursement_credits_on_creditable_id_and_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_reimbursement_credits_on_creditable_id_and_type ON public.spree_reimbursement_credits USING btree (creditable_id, creditable_type);


--
-- Name: index_return_authorizations_on_return_authorization_reason_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_return_authorizations_on_return_authorization_reason_id ON public.spree_return_authorizations USING btree (return_authorization_reason_id);


--
-- Name: index_return_items_on_customer_return_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_return_items_on_customer_return_id ON public.spree_return_items USING btree (customer_return_id);


--
-- Name: index_spree_addresses_on_country_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_addresses_on_country_id ON public.spree_addresses USING btree (country_id);


--
-- Name: index_spree_addresses_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_addresses_on_deleted_at ON public.spree_addresses USING btree (deleted_at);


--
-- Name: index_spree_addresses_on_state_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_addresses_on_state_id ON public.spree_addresses USING btree (state_id);


--
-- Name: index_spree_addresses_on_user_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_addresses_on_user_id ON public.spree_addresses USING btree (user_id);


--
-- Name: index_spree_adjustments_on_adjustable_id_and_adjustable_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_adjustments_on_adjustable_id_and_adjustable_type ON public.spree_adjustments USING btree (adjustable_id, adjustable_type);


--
-- Name: index_spree_adjustments_on_eligible; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_adjustments_on_eligible ON public.spree_adjustments USING btree (eligible);


--
-- Name: index_spree_adjustments_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_adjustments_on_order_id ON public.spree_adjustments USING btree (order_id);


--
-- Name: index_spree_adjustments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_adjustments_on_source_id_and_source_type ON public.spree_adjustments USING btree (source_id, source_type);


--
-- Name: index_spree_assets_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_assets_on_position ON public.spree_assets USING btree ("position");


--
-- Name: index_spree_calculators_on_calculable_id_and_calculable_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_calculators_on_calculable_id_and_calculable_type ON public.spree_calculators USING btree (calculable_id, calculable_type);


--
-- Name: index_spree_calculators_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_calculators_on_deleted_at ON public.spree_calculators USING btree (deleted_at);


--
-- Name: index_spree_calculators_on_id_and_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_calculators_on_id_and_type ON public.spree_calculators USING btree (id, type);


--
-- Name: index_spree_checks_on_payment_method_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_checks_on_payment_method_id ON public.spree_checks USING btree (payment_method_id);


--
-- Name: index_spree_checks_on_user_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_checks_on_user_id ON public.spree_checks USING btree (user_id);


--
-- Name: index_spree_cms_pages_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_pages_on_deleted_at ON public.spree_cms_pages USING btree (deleted_at);


--
-- Name: index_spree_cms_pages_on_slug_and_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_cms_pages_on_slug_and_store_id ON public.spree_cms_pages USING btree (slug, store_id);


--
-- Name: index_spree_cms_pages_on_slug_and_store_id_and_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_pages_on_slug_and_store_id_and_deleted_at ON public.spree_cms_pages USING btree (slug, store_id, deleted_at);


--
-- Name: index_spree_cms_pages_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_pages_on_store_id ON public.spree_cms_pages USING btree (store_id);


--
-- Name: index_spree_cms_pages_on_store_id_and_locale_and_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_pages_on_store_id_and_locale_and_type ON public.spree_cms_pages USING btree (store_id, locale, type);


--
-- Name: index_spree_cms_pages_on_title_and_type_and_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_pages_on_title_and_type_and_store_id ON public.spree_cms_pages USING btree (title, type, store_id);


--
-- Name: index_spree_cms_pages_on_visible; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_pages_on_visible ON public.spree_cms_pages USING btree (visible);


--
-- Name: index_spree_cms_sections_on_cms_page_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_sections_on_cms_page_id ON public.spree_cms_sections USING btree (cms_page_id);


--
-- Name: index_spree_cms_sections_on_linked_resource; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_sections_on_linked_resource ON public.spree_cms_sections USING btree (linked_resource_type, linked_resource_id);


--
-- Name: index_spree_cms_sections_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_sections_on_position ON public.spree_cms_sections USING btree ("position");


--
-- Name: index_spree_cms_sections_on_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_cms_sections_on_type ON public.spree_cms_sections USING btree (type);


--
-- Name: index_spree_countries_on_iso; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_countries_on_iso ON public.spree_countries USING btree (iso);


--
-- Name: index_spree_countries_on_iso3; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_countries_on_iso3 ON public.spree_countries USING btree (iso3);


--
-- Name: index_spree_countries_on_lower_iso_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_countries_on_lower_iso_name ON public.spree_countries USING btree (lower((iso_name)::text));


--
-- Name: index_spree_countries_on_lower_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_countries_on_lower_name ON public.spree_countries USING btree (lower((name)::text));


--
-- Name: index_spree_credit_cards_on_address_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_credit_cards_on_address_id ON public.spree_credit_cards USING btree (address_id);


--
-- Name: index_spree_credit_cards_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_credit_cards_on_deleted_at ON public.spree_credit_cards USING btree (deleted_at);


--
-- Name: index_spree_credit_cards_on_payment_method_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_credit_cards_on_payment_method_id ON public.spree_credit_cards USING btree (payment_method_id);


--
-- Name: index_spree_credit_cards_on_user_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_credit_cards_on_user_id ON public.spree_credit_cards USING btree (user_id);


--
-- Name: index_spree_customer_returns_on_number; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_customer_returns_on_number ON public.spree_customer_returns USING btree (number);


--
-- Name: index_spree_customer_returns_on_stock_location_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_customer_returns_on_stock_location_id ON public.spree_customer_returns USING btree (stock_location_id);


--
-- Name: index_spree_customer_returns_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_customer_returns_on_store_id ON public.spree_customer_returns USING btree (store_id);


--
-- Name: index_spree_gateways_on_active; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_gateways_on_active ON public.spree_gateways USING btree (active);


--
-- Name: index_spree_gateways_on_test_mode; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_gateways_on_test_mode ON public.spree_gateways USING btree (test_mode);


--
-- Name: index_spree_inventory_units_on_line_item_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_inventory_units_on_line_item_id ON public.spree_inventory_units USING btree (line_item_id);


--
-- Name: index_spree_inventory_units_on_original_return_item_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_inventory_units_on_original_return_item_id ON public.spree_inventory_units USING btree (original_return_item_id);


--
-- Name: index_spree_line_items_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_line_items_on_order_id ON public.spree_line_items USING btree (order_id);


--
-- Name: index_spree_line_items_on_tax_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_line_items_on_tax_category_id ON public.spree_line_items USING btree (tax_category_id);


--
-- Name: index_spree_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_line_items_on_variant_id ON public.spree_line_items USING btree (variant_id);


--
-- Name: index_spree_log_entries_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_log_entries_on_source_id_and_source_type ON public.spree_log_entries USING btree (source_id, source_type);


--
-- Name: index_spree_menu_items_on_code; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_code ON public.spree_menu_items USING btree (code);


--
-- Name: index_spree_menu_items_on_depth; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_depth ON public.spree_menu_items USING btree (depth);


--
-- Name: index_spree_menu_items_on_item_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_item_type ON public.spree_menu_items USING btree (item_type);


--
-- Name: index_spree_menu_items_on_lft; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_lft ON public.spree_menu_items USING btree (lft);


--
-- Name: index_spree_menu_items_on_linked_resource; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_linked_resource ON public.spree_menu_items USING btree (linked_resource_type, linked_resource_id);


--
-- Name: index_spree_menu_items_on_menu_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_menu_id ON public.spree_menu_items USING btree (menu_id);


--
-- Name: index_spree_menu_items_on_parent_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_parent_id ON public.spree_menu_items USING btree (parent_id);


--
-- Name: index_spree_menu_items_on_rgt; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menu_items_on_rgt ON public.spree_menu_items USING btree (rgt);


--
-- Name: index_spree_menus_on_locale; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menus_on_locale ON public.spree_menus USING btree (locale);


--
-- Name: index_spree_menus_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_menus_on_store_id ON public.spree_menus USING btree (store_id);


--
-- Name: index_spree_menus_on_store_id_and_location_and_locale; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_menus_on_store_id_and_location_and_locale ON public.spree_menus USING btree (store_id, location, locale);


--
-- Name: index_spree_oauth_access_grants_on_application_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_oauth_access_grants_on_application_id ON public.spree_oauth_access_grants USING btree (application_id);


--
-- Name: index_spree_oauth_access_grants_on_token; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_oauth_access_grants_on_token ON public.spree_oauth_access_grants USING btree (token);


--
-- Name: index_spree_oauth_access_tokens_on_application_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_oauth_access_tokens_on_application_id ON public.spree_oauth_access_tokens USING btree (application_id);


--
-- Name: index_spree_oauth_access_tokens_on_refresh_token; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_oauth_access_tokens_on_refresh_token ON public.spree_oauth_access_tokens USING btree (refresh_token);


--
-- Name: index_spree_oauth_access_tokens_on_resource_owner_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_oauth_access_tokens_on_resource_owner_id ON public.spree_oauth_access_tokens USING btree (resource_owner_id);


--
-- Name: index_spree_oauth_access_tokens_on_token; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_oauth_access_tokens_on_token ON public.spree_oauth_access_tokens USING btree (token);


--
-- Name: index_spree_oauth_applications_on_uid; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_oauth_applications_on_uid ON public.spree_oauth_applications USING btree (uid);


--
-- Name: index_spree_option_type_prototypes_on_option_type_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_type_prototypes_on_option_type_id ON public.spree_option_type_prototypes USING btree (option_type_id);


--
-- Name: index_spree_option_type_prototypes_on_prototype_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_type_prototypes_on_prototype_id ON public.spree_option_type_prototypes USING btree (prototype_id);


--
-- Name: index_spree_option_types_on_filterable; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_types_on_filterable ON public.spree_option_types USING btree (filterable);


--
-- Name: index_spree_option_types_on_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_types_on_name ON public.spree_option_types USING btree (name);


--
-- Name: index_spree_option_types_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_types_on_position ON public.spree_option_types USING btree ("position");


--
-- Name: index_spree_option_value_variants_on_option_value_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_value_variants_on_option_value_id ON public.spree_option_value_variants USING btree (option_value_id);


--
-- Name: index_spree_option_value_variants_on_variant_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_value_variants_on_variant_id ON public.spree_option_value_variants USING btree (variant_id);


--
-- Name: index_spree_option_values_on_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_values_on_name ON public.spree_option_values USING btree (name);


--
-- Name: index_spree_option_values_on_option_type_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_values_on_option_type_id ON public.spree_option_values USING btree (option_type_id);


--
-- Name: index_spree_option_values_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_option_values_on_position ON public.spree_option_values USING btree ("position");


--
-- Name: index_spree_order_promotions_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_order_promotions_on_order_id ON public.spree_order_promotions USING btree (order_id);


--
-- Name: index_spree_order_promotions_on_promotion_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_order_promotions_on_promotion_id ON public.spree_order_promotions USING btree (promotion_id);


--
-- Name: index_spree_order_promotions_on_promotion_id_and_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_order_promotions_on_promotion_id_and_order_id ON public.spree_order_promotions USING btree (promotion_id, order_id);


--
-- Name: index_spree_orders_on_approver_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_approver_id ON public.spree_orders USING btree (approver_id);


--
-- Name: index_spree_orders_on_bill_address_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_bill_address_id ON public.spree_orders USING btree (bill_address_id);


--
-- Name: index_spree_orders_on_canceler_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_canceler_id ON public.spree_orders USING btree (canceler_id);


--
-- Name: index_spree_orders_on_completed_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_completed_at ON public.spree_orders USING btree (completed_at);


--
-- Name: index_spree_orders_on_confirmation_delivered; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_confirmation_delivered ON public.spree_orders USING btree (confirmation_delivered);


--
-- Name: index_spree_orders_on_considered_risky; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_considered_risky ON public.spree_orders USING btree (considered_risky);


--
-- Name: index_spree_orders_on_created_by_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_created_by_id ON public.spree_orders USING btree (created_by_id);


--
-- Name: index_spree_orders_on_number; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_orders_on_number ON public.spree_orders USING btree (number);


--
-- Name: index_spree_orders_on_ship_address_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_ship_address_id ON public.spree_orders USING btree (ship_address_id);


--
-- Name: index_spree_orders_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_store_id ON public.spree_orders USING btree (store_id);


--
-- Name: index_spree_orders_on_token; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_token ON public.spree_orders USING btree (token);


--
-- Name: index_spree_orders_on_user_id_and_created_by_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_orders_on_user_id_and_created_by_id ON public.spree_orders USING btree (user_id, created_by_id);


--
-- Name: index_spree_payment_capture_events_on_payment_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payment_capture_events_on_payment_id ON public.spree_payment_capture_events USING btree (payment_id);


--
-- Name: index_spree_payment_methods_on_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payment_methods_on_id ON public.spree_payment_methods USING btree (id);


--
-- Name: index_spree_payment_methods_on_id_and_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payment_methods_on_id_and_type ON public.spree_payment_methods USING btree (id, type);


--
-- Name: index_spree_payment_methods_stores_on_payment_method_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payment_methods_stores_on_payment_method_id ON public.spree_payment_methods_stores USING btree (payment_method_id);


--
-- Name: index_spree_payment_methods_stores_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payment_methods_stores_on_store_id ON public.spree_payment_methods_stores USING btree (store_id);


--
-- Name: index_spree_payments_on_number; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_payments_on_number ON public.spree_payments USING btree (number);


--
-- Name: index_spree_payments_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payments_on_order_id ON public.spree_payments USING btree (order_id);


--
-- Name: index_spree_payments_on_payment_method_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payments_on_payment_method_id ON public.spree_payments USING btree (payment_method_id);


--
-- Name: index_spree_payments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_payments_on_source_id_and_source_type ON public.spree_payments USING btree (source_id, source_type);


--
-- Name: index_spree_preferences_on_key; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_preferences_on_key ON public.spree_preferences USING btree (key);


--
-- Name: index_spree_prices_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_prices_on_deleted_at ON public.spree_prices USING btree (deleted_at);


--
-- Name: index_spree_prices_on_variant_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_prices_on_variant_id ON public.spree_prices USING btree (variant_id);


--
-- Name: index_spree_prices_on_variant_id_and_currency; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_prices_on_variant_id_and_currency ON public.spree_prices USING btree (variant_id, currency);


--
-- Name: index_spree_product_option_types_on_option_type_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_product_option_types_on_option_type_id ON public.spree_product_option_types USING btree (option_type_id);


--
-- Name: index_spree_product_option_types_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_product_option_types_on_position ON public.spree_product_option_types USING btree ("position");


--
-- Name: index_spree_product_option_types_on_product_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_product_option_types_on_product_id ON public.spree_product_option_types USING btree (product_id);


--
-- Name: index_spree_product_properties_on_filter_param; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_product_properties_on_filter_param ON public.spree_product_properties USING btree (filter_param);


--
-- Name: index_spree_product_properties_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_product_properties_on_position ON public.spree_product_properties USING btree ("position");


--
-- Name: index_spree_product_properties_on_property_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_product_properties_on_property_id ON public.spree_product_properties USING btree (property_id);


--
-- Name: index_spree_product_properties_on_property_id_and_product_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_product_properties_on_property_id_and_product_id ON public.spree_product_properties USING btree (property_id, product_id);


--
-- Name: index_spree_products_on_available_on; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_on_available_on ON public.spree_products USING btree (available_on);


--
-- Name: index_spree_products_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_on_deleted_at ON public.spree_products USING btree (deleted_at);


--
-- Name: index_spree_products_on_discontinue_on; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_on_discontinue_on ON public.spree_products USING btree (discontinue_on);


--
-- Name: index_spree_products_on_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_on_name ON public.spree_products USING btree (name);


--
-- Name: index_spree_products_on_shipping_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_on_shipping_category_id ON public.spree_products USING btree (shipping_category_id);


--
-- Name: index_spree_products_on_slug; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_products_on_slug ON public.spree_products USING btree (slug);


--
-- Name: index_spree_products_on_tax_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_on_tax_category_id ON public.spree_products USING btree (tax_category_id);


--
-- Name: index_spree_products_stores_on_product_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_stores_on_product_id ON public.spree_products_stores USING btree (product_id);


--
-- Name: index_spree_products_stores_on_product_id_and_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_products_stores_on_product_id_and_store_id ON public.spree_products_stores USING btree (product_id, store_id);


--
-- Name: index_spree_products_stores_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_stores_on_store_id ON public.spree_products_stores USING btree (store_id);


--
-- Name: index_spree_products_taxons_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_taxons_on_position ON public.spree_products_taxons USING btree ("position");


--
-- Name: index_spree_products_taxons_on_product_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_taxons_on_product_id ON public.spree_products_taxons USING btree (product_id);


--
-- Name: index_spree_products_taxons_on_product_id_and_taxon_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_products_taxons_on_product_id_and_taxon_id ON public.spree_products_taxons USING btree (product_id, taxon_id);


--
-- Name: index_spree_products_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_products_taxons_on_taxon_id ON public.spree_products_taxons USING btree (taxon_id);


--
-- Name: index_spree_promotion_action_line_items_on_promotion_action_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_action_line_items_on_promotion_action_id ON public.spree_promotion_action_line_items USING btree (promotion_action_id);


--
-- Name: index_spree_promotion_action_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_action_line_items_on_variant_id ON public.spree_promotion_action_line_items USING btree (variant_id);


--
-- Name: index_spree_promotion_actions_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_actions_on_deleted_at ON public.spree_promotion_actions USING btree (deleted_at);


--
-- Name: index_spree_promotion_actions_on_id_and_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_actions_on_id_and_type ON public.spree_promotion_actions USING btree (id, type);


--
-- Name: index_spree_promotion_actions_on_promotion_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_actions_on_promotion_id ON public.spree_promotion_actions USING btree (promotion_id);


--
-- Name: index_spree_promotion_rule_taxons_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_rule_taxons_on_promotion_rule_id ON public.spree_promotion_rule_taxons USING btree (promotion_rule_id);


--
-- Name: index_spree_promotion_rule_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_rule_taxons_on_taxon_id ON public.spree_promotion_rule_taxons USING btree (taxon_id);


--
-- Name: index_spree_promotion_rules_on_promotion_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotion_rules_on_promotion_id ON public.spree_promotion_rules USING btree (promotion_id);


--
-- Name: index_spree_promotions_on_advertise; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_on_advertise ON public.spree_promotions USING btree (advertise);


--
-- Name: index_spree_promotions_on_code; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_on_code ON public.spree_promotions USING btree (code);


--
-- Name: index_spree_promotions_on_expires_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_on_expires_at ON public.spree_promotions USING btree (expires_at);


--
-- Name: index_spree_promotions_on_id_and_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_on_id_and_type ON public.spree_promotions USING btree (id, type);


--
-- Name: index_spree_promotions_on_path; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_on_path ON public.spree_promotions USING btree (path);


--
-- Name: index_spree_promotions_on_promotion_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_on_promotion_category_id ON public.spree_promotions USING btree (promotion_category_id);


--
-- Name: index_spree_promotions_on_starts_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_on_starts_at ON public.spree_promotions USING btree (starts_at);


--
-- Name: index_spree_promotions_stores_on_promotion_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_stores_on_promotion_id ON public.spree_promotions_stores USING btree (promotion_id);


--
-- Name: index_spree_promotions_stores_on_promotion_id_and_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_promotions_stores_on_promotion_id_and_store_id ON public.spree_promotions_stores USING btree (promotion_id, store_id);


--
-- Name: index_spree_promotions_stores_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_promotions_stores_on_store_id ON public.spree_promotions_stores USING btree (store_id);


--
-- Name: index_spree_properties_on_filter_param; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_properties_on_filter_param ON public.spree_properties USING btree (filter_param);


--
-- Name: index_spree_properties_on_filterable; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_properties_on_filterable ON public.spree_properties USING btree (filterable);


--
-- Name: index_spree_properties_on_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_properties_on_name ON public.spree_properties USING btree (name);


--
-- Name: index_spree_property_prototypes_on_property_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_property_prototypes_on_property_id ON public.spree_property_prototypes USING btree (property_id);


--
-- Name: index_spree_property_prototypes_on_prototype_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_property_prototypes_on_prototype_id ON public.spree_property_prototypes USING btree (prototype_id);


--
-- Name: index_spree_prototype_taxons_on_prototype_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_prototype_taxons_on_prototype_id ON public.spree_prototype_taxons USING btree (prototype_id);


--
-- Name: index_spree_prototype_taxons_on_prototype_id_and_taxon_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_prototype_taxons_on_prototype_id_and_taxon_id ON public.spree_prototype_taxons USING btree (prototype_id, taxon_id);


--
-- Name: index_spree_prototype_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_prototype_taxons_on_taxon_id ON public.spree_prototype_taxons USING btree (taxon_id);


--
-- Name: index_spree_refund_reasons_on_lower_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_refund_reasons_on_lower_name ON public.spree_refund_reasons USING btree (lower((name)::text));


--
-- Name: index_spree_refunds_on_payment_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_refunds_on_payment_id ON public.spree_refunds USING btree (payment_id);


--
-- Name: index_spree_refunds_on_reimbursement_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_refunds_on_reimbursement_id ON public.spree_refunds USING btree (reimbursement_id);


--
-- Name: index_spree_reimbursement_credits_on_reimbursement_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_reimbursement_credits_on_reimbursement_id ON public.spree_reimbursement_credits USING btree (reimbursement_id);


--
-- Name: index_spree_reimbursement_types_on_lower_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_reimbursement_types_on_lower_name ON public.spree_reimbursement_types USING btree (lower((name)::text));


--
-- Name: index_spree_reimbursement_types_on_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_reimbursement_types_on_type ON public.spree_reimbursement_types USING btree (type);


--
-- Name: index_spree_reimbursements_on_customer_return_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_reimbursements_on_customer_return_id ON public.spree_reimbursements USING btree (customer_return_id);


--
-- Name: index_spree_reimbursements_on_number; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_reimbursements_on_number ON public.spree_reimbursements USING btree (number);


--
-- Name: index_spree_reimbursements_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_reimbursements_on_order_id ON public.spree_reimbursements USING btree (order_id);


--
-- Name: index_spree_return_authorization_reasons_on_lower_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_return_authorization_reasons_on_lower_name ON public.spree_return_authorization_reasons USING btree (lower((name)::text));


--
-- Name: index_spree_return_authorizations_on_number; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_return_authorizations_on_number ON public.spree_return_authorizations USING btree (number);


--
-- Name: index_spree_return_authorizations_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_authorizations_on_order_id ON public.spree_return_authorizations USING btree (order_id);


--
-- Name: index_spree_return_authorizations_on_stock_location_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_authorizations_on_stock_location_id ON public.spree_return_authorizations USING btree (stock_location_id);


--
-- Name: index_spree_return_items_on_exchange_variant_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_items_on_exchange_variant_id ON public.spree_return_items USING btree (exchange_variant_id);


--
-- Name: index_spree_return_items_on_inventory_unit_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_items_on_inventory_unit_id ON public.spree_return_items USING btree (inventory_unit_id);


--
-- Name: index_spree_return_items_on_override_reimbursement_type_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_items_on_override_reimbursement_type_id ON public.spree_return_items USING btree (override_reimbursement_type_id);


--
-- Name: index_spree_return_items_on_preferred_reimbursement_type_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_items_on_preferred_reimbursement_type_id ON public.spree_return_items USING btree (preferred_reimbursement_type_id);


--
-- Name: index_spree_return_items_on_reimbursement_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_items_on_reimbursement_id ON public.spree_return_items USING btree (reimbursement_id);


--
-- Name: index_spree_return_items_on_return_authorization_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_return_items_on_return_authorization_id ON public.spree_return_items USING btree (return_authorization_id);


--
-- Name: index_spree_role_users_on_role_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_role_users_on_role_id ON public.spree_role_users USING btree (role_id);


--
-- Name: index_spree_role_users_on_user_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_role_users_on_user_id ON public.spree_role_users USING btree (user_id);


--
-- Name: index_spree_roles_on_lower_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_roles_on_lower_name ON public.spree_roles USING btree (lower((name)::text));


--
-- Name: index_spree_shipments_on_address_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipments_on_address_id ON public.spree_shipments USING btree (address_id);


--
-- Name: index_spree_shipments_on_number; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_shipments_on_number ON public.spree_shipments USING btree (number);


--
-- Name: index_spree_shipments_on_order_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipments_on_order_id ON public.spree_shipments USING btree (order_id);


--
-- Name: index_spree_shipments_on_stock_location_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipments_on_stock_location_id ON public.spree_shipments USING btree (stock_location_id);


--
-- Name: index_spree_shipping_categories_on_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_categories_on_name ON public.spree_shipping_categories USING btree (name);


--
-- Name: index_spree_shipping_method_categories_on_shipping_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_method_categories_on_shipping_category_id ON public.spree_shipping_method_categories USING btree (shipping_category_id);


--
-- Name: index_spree_shipping_method_categories_on_shipping_method_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_method_categories_on_shipping_method_id ON public.spree_shipping_method_categories USING btree (shipping_method_id);


--
-- Name: index_spree_shipping_method_zones_on_shipping_method_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_method_zones_on_shipping_method_id ON public.spree_shipping_method_zones USING btree (shipping_method_id);


--
-- Name: index_spree_shipping_method_zones_on_zone_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_method_zones_on_zone_id ON public.spree_shipping_method_zones USING btree (zone_id);


--
-- Name: index_spree_shipping_methods_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_methods_on_deleted_at ON public.spree_shipping_methods USING btree (deleted_at);


--
-- Name: index_spree_shipping_methods_on_tax_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_methods_on_tax_category_id ON public.spree_shipping_methods USING btree (tax_category_id);


--
-- Name: index_spree_shipping_rates_on_selected; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_rates_on_selected ON public.spree_shipping_rates USING btree (selected);


--
-- Name: index_spree_shipping_rates_on_shipment_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_rates_on_shipment_id ON public.spree_shipping_rates USING btree (shipment_id);


--
-- Name: index_spree_shipping_rates_on_shipping_method_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_rates_on_shipping_method_id ON public.spree_shipping_rates USING btree (shipping_method_id);


--
-- Name: index_spree_shipping_rates_on_tax_rate_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_shipping_rates_on_tax_rate_id ON public.spree_shipping_rates USING btree (tax_rate_id);


--
-- Name: index_spree_state_changes_on_stateful_id_and_stateful_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_state_changes_on_stateful_id_and_stateful_type ON public.spree_state_changes USING btree (stateful_id, stateful_type);


--
-- Name: index_spree_states_on_country_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_states_on_country_id ON public.spree_states USING btree (country_id);


--
-- Name: index_spree_stock_items_on_backorderable; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_items_on_backorderable ON public.spree_stock_items USING btree (backorderable);


--
-- Name: index_spree_stock_items_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_items_on_deleted_at ON public.spree_stock_items USING btree (deleted_at);


--
-- Name: index_spree_stock_items_on_stock_location_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_items_on_stock_location_id ON public.spree_stock_items USING btree (stock_location_id);


--
-- Name: index_spree_stock_items_on_variant_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_items_on_variant_id ON public.spree_stock_items USING btree (variant_id);


--
-- Name: index_spree_stock_locations_on_active; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_locations_on_active ON public.spree_stock_locations USING btree (active);


--
-- Name: index_spree_stock_locations_on_backorderable_default; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_locations_on_backorderable_default ON public.spree_stock_locations USING btree (backorderable_default);


--
-- Name: index_spree_stock_locations_on_country_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_locations_on_country_id ON public.spree_stock_locations USING btree (country_id);


--
-- Name: index_spree_stock_locations_on_propagate_all_variants; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_locations_on_propagate_all_variants ON public.spree_stock_locations USING btree (propagate_all_variants);


--
-- Name: index_spree_stock_locations_on_state_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_locations_on_state_id ON public.spree_stock_locations USING btree (state_id);


--
-- Name: index_spree_stock_movements_on_stock_item_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_movements_on_stock_item_id ON public.spree_stock_movements USING btree (stock_item_id);


--
-- Name: index_spree_stock_transfers_on_destination_location_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_transfers_on_destination_location_id ON public.spree_stock_transfers USING btree (destination_location_id);


--
-- Name: index_spree_stock_transfers_on_number; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_stock_transfers_on_number ON public.spree_stock_transfers USING btree (number);


--
-- Name: index_spree_stock_transfers_on_source_location_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stock_transfers_on_source_location_id ON public.spree_stock_transfers USING btree (source_location_id);


--
-- Name: index_spree_store_credit_events_on_store_credit_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_store_credit_events_on_store_credit_id ON public.spree_store_credit_events USING btree (store_credit_id);


--
-- Name: index_spree_store_credit_types_on_priority; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_store_credit_types_on_priority ON public.spree_store_credit_types USING btree (priority);


--
-- Name: index_spree_store_credits_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_store_credits_on_deleted_at ON public.spree_store_credits USING btree (deleted_at);


--
-- Name: index_spree_store_credits_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_store_credits_on_store_id ON public.spree_store_credits USING btree (store_id);


--
-- Name: index_spree_store_credits_on_type_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_store_credits_on_type_id ON public.spree_store_credits USING btree (type_id);


--
-- Name: index_spree_store_credits_on_user_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_store_credits_on_user_id ON public.spree_store_credits USING btree (user_id);


--
-- Name: index_spree_stores_on_default; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stores_on_default ON public.spree_stores USING btree ("default");


--
-- Name: index_spree_stores_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stores_on_deleted_at ON public.spree_stores USING btree (deleted_at);


--
-- Name: index_spree_stores_on_lower_code; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_stores_on_lower_code ON public.spree_stores USING btree (lower((code)::text));


--
-- Name: index_spree_stores_on_url; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_stores_on_url ON public.spree_stores USING btree (url);


--
-- Name: index_spree_tax_categories_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_tax_categories_on_deleted_at ON public.spree_tax_categories USING btree (deleted_at);


--
-- Name: index_spree_tax_categories_on_is_default; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_tax_categories_on_is_default ON public.spree_tax_categories USING btree (is_default);


--
-- Name: index_spree_tax_rates_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_tax_rates_on_deleted_at ON public.spree_tax_rates USING btree (deleted_at);


--
-- Name: index_spree_tax_rates_on_included_in_price; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_tax_rates_on_included_in_price ON public.spree_tax_rates USING btree (included_in_price);


--
-- Name: index_spree_tax_rates_on_show_rate_in_label; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_tax_rates_on_show_rate_in_label ON public.spree_tax_rates USING btree (show_rate_in_label);


--
-- Name: index_spree_tax_rates_on_tax_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_tax_rates_on_tax_category_id ON public.spree_tax_rates USING btree (tax_category_id);


--
-- Name: index_spree_tax_rates_on_zone_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_tax_rates_on_zone_id ON public.spree_tax_rates USING btree (zone_id);


--
-- Name: index_spree_taxonomies_on_name_and_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_taxonomies_on_name_and_store_id ON public.spree_taxonomies USING btree (name, store_id);


--
-- Name: index_spree_taxonomies_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_taxonomies_on_position ON public.spree_taxonomies USING btree ("position");


--
-- Name: index_spree_taxonomies_on_store_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_taxonomies_on_store_id ON public.spree_taxonomies USING btree (store_id);


--
-- Name: index_spree_taxons_on_lft; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_taxons_on_lft ON public.spree_taxons USING btree (lft);


--
-- Name: index_spree_taxons_on_name; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_taxons_on_name ON public.spree_taxons USING btree (name);


--
-- Name: index_spree_taxons_on_name_and_parent_id_and_taxonomy_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_taxons_on_name_and_parent_id_and_taxonomy_id ON public.spree_taxons USING btree (name, parent_id, taxonomy_id);


--
-- Name: index_spree_taxons_on_permalink_and_parent_id_and_taxonomy_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX index_spree_taxons_on_permalink_and_parent_id_and_taxonomy_id ON public.spree_taxons USING btree (permalink, parent_id, taxonomy_id);


--
-- Name: index_spree_taxons_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_taxons_on_position ON public.spree_taxons USING btree ("position");


--
-- Name: index_spree_taxons_on_rgt; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_taxons_on_rgt ON public.spree_taxons USING btree (rgt);


--
-- Name: index_spree_trackers_on_active; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_trackers_on_active ON public.spree_trackers USING btree (active);


--
-- Name: index_spree_users_on_bill_address_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_users_on_bill_address_id ON public.spree_users USING btree (bill_address_id);


--
-- Name: index_spree_users_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_users_on_deleted_at ON public.spree_users USING btree (deleted_at);


--
-- Name: index_spree_users_on_ship_address_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_users_on_ship_address_id ON public.spree_users USING btree (ship_address_id);


--
-- Name: index_spree_users_on_spree_api_key; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_users_on_spree_api_key ON public.spree_users USING btree (spree_api_key);


--
-- Name: index_spree_variants_on_deleted_at; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_deleted_at ON public.spree_variants USING btree (deleted_at);


--
-- Name: index_spree_variants_on_discontinue_on; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_discontinue_on ON public.spree_variants USING btree (discontinue_on);


--
-- Name: index_spree_variants_on_is_master; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_is_master ON public.spree_variants USING btree (is_master);


--
-- Name: index_spree_variants_on_position; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_position ON public.spree_variants USING btree ("position");


--
-- Name: index_spree_variants_on_product_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_product_id ON public.spree_variants USING btree (product_id);


--
-- Name: index_spree_variants_on_sku; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_sku ON public.spree_variants USING btree (sku);


--
-- Name: index_spree_variants_on_tax_category_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_tax_category_id ON public.spree_variants USING btree (tax_category_id);


--
-- Name: index_spree_variants_on_track_inventory; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_variants_on_track_inventory ON public.spree_variants USING btree (track_inventory);


--
-- Name: index_spree_zone_members_on_zone_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_zone_members_on_zone_id ON public.spree_zone_members USING btree (zone_id);


--
-- Name: index_spree_zone_members_on_zoneable_id_and_zoneable_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_zone_members_on_zoneable_id_and_zoneable_type ON public.spree_zone_members USING btree (zoneable_id, zoneable_type);


--
-- Name: index_spree_zones_on_default_tax; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_zones_on_default_tax ON public.spree_zones USING btree (default_tax);


--
-- Name: index_spree_zones_on_kind; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_spree_zones_on_kind ON public.spree_zones USING btree (kind);


--
-- Name: index_stock_movements_on_originator_id_and_originator_type; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_stock_movements_on_originator_id_and_originator_type ON public.spree_stock_movements USING btree (originator_id, originator_type);


--
-- Name: index_taxons_on_parent_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_taxons_on_parent_id ON public.spree_taxons USING btree (parent_id);


--
-- Name: index_taxons_on_permalink; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_taxons_on_permalink ON public.spree_taxons USING btree (permalink);


--
-- Name: index_taxons_on_taxonomy_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX index_taxons_on_taxonomy_id ON public.spree_taxons USING btree (taxonomy_id);


--
-- Name: payment_mentod_id_store_id_unique_index; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX payment_mentod_id_store_id_unique_index ON public.spree_payment_methods_stores USING btree (payment_method_id, store_id);


--
-- Name: spree_option_type_prototypes_prototype_id_option_type_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX spree_option_type_prototypes_prototype_id_option_type_id ON public.spree_option_type_prototypes USING btree (prototype_id, option_type_id);


--
-- Name: spree_shipping_rates_join_index; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX spree_shipping_rates_join_index ON public.spree_shipping_rates USING btree (shipment_id, shipping_method_id);


--
-- Name: spree_store_credit_events_originator; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX spree_store_credit_events_originator ON public.spree_store_credit_events USING btree (originator_id, originator_type);


--
-- Name: spree_store_credits_originator; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX spree_store_credits_originator ON public.spree_store_credits USING btree (originator_id, originator_type);


--
-- Name: stock_item_by_loc_and_var_id; Type: INDEX; Schema: public; Owner: retebio
--

CREATE INDEX stock_item_by_loc_and_var_id ON public.spree_stock_items USING btree (stock_location_id, variant_id);


--
-- Name: unique_spree_shipping_method_categories; Type: INDEX; Schema: public; Owner: retebio
--

CREATE UNIQUE INDEX unique_spree_shipping_method_categories ON public.spree_shipping_method_categories USING btree (shipping_category_id, shipping_method_id);


--
-- Name: spree_oauth_access_grants fk_rails_8049be136c; Type: FK CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_access_grants
    ADD CONSTRAINT fk_rails_8049be136c FOREIGN KEY (application_id) REFERENCES public.spree_oauth_applications(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: spree_oauth_access_tokens fk_rails_c9894c7021; Type: FK CONSTRAINT; Schema: public; Owner: retebio
--

ALTER TABLE ONLY public.spree_oauth_access_tokens
    ADD CONSTRAINT fk_rails_c9894c7021 FOREIGN KEY (application_id) REFERENCES public.spree_oauth_applications(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: retebio
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO retebio;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


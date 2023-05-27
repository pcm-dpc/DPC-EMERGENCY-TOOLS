/*
 Navicat Premium Data Transfer

 Source Server         : db-aws-lcahq
 Source Server Type    : PostgreSQL
 Source Server Version : 140007
 Source Host           : dpc-emergency-management.cujqhxastv0n.eu-south-1.rds.amazonaws.com:5432
 Source Catalog        : dpc_emergency_management
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140007
 File Encoding         : 65001

 Date: 27/05/2023 13:14:54
*/


-- ----------------------------
-- Table structure for rilevamento_effetti_territorio
-- ----------------------------
DROP TABLE IF EXISTS "public"."rilevamento_effetti_territorio";
CREATE TABLE "public"."rilevamento_effetti_territorio" (
  "id" int4 NOT NULL DEFAULT nextval('rilevamento_effetti_territorio_id_seq'::regclass),
  "comune" int4 NOT NULL,
  "localita" varchar(255) COLLATE "pg_catalog"."default",
  "bacino" varchar(255) COLLATE "pg_catalog"."default",
  "corso_acqua" varchar(255) COLLATE "pg_catalog"."default",
  "latitudine" float8 NOT NULL,
  "longitudine" float8 NOT NULL,
  "note_localizzazione" text COLLATE "pg_catalog"."default",
  "soggetto_segnalazione" varchar(255) COLLATE "pg_catalog"."default",
  "data_segnalazione" date,
  "oggetto_segnalazione" text COLLATE "pg_catalog"."default",
  "rilevatore_01" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "rilevatore_02" varchar(10) COLLATE "pg_catalog"."default",
  "rilevatore_03" varchar(10) COLLATE "pg_catalog"."default",
  "rilevatore_04" varchar(10) COLLATE "pg_catalog"."default",
  "rilevatore_05" varchar(10) COLLATE "pg_catalog"."default",
  "tipologia_fenomeno" text COLLATE "pg_catalog"."default",
  "causa_fenomeno" varchar(255) COLLATE "pg_catalog"."default",
  "note_causa_fenomeno" text COLLATE "pg_catalog"."default",
  "frane_sinkholes_larghezza_diametro_massimo_m" numeric(5,2),
  "frane_sinkholes_lunghezza_diametro_minimo_m" numeric(5,2),
  "frane_sinkholes_profondita_m" numeric(5,2),
  "frane_sinkholes_volumi_terreno_mobilizzati_mc" numeric(5,2),
  "allagamenti_inondazioni_aree_allagate_inondate_mq" numeric(5,2),
  "allagamenti_inondazioni_tirante_idrico_massimo_m" numeric(5,2),
  "allagamenti_inondazioni_tirante_idrico_medio_m" numeric(5,2),
  "allagamenti_inondazioni_spessore_massimo_materiale_depositato_m" numeric(5,2),
  "descrizione_fenomeno" text COLLATE "pg_catalog"."default" NOT NULL,
  "danni_persone_vittime" int8,
  "danni_persone_dispersi" int8,
  "danni_persone_evacuati" int8,
  "note_danni_persone" text COLLATE "pg_catalog"."default",
  "danni_cose_patrimonio_edilizio_pubblico" text COLLATE "pg_catalog"."default",
  "danni_cose_patrimonio_edilizio_privato" text COLLATE "pg_catalog"."default",
  "danni_cose_beni_culturali" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_stradali" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_ferroviarie" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_idrauliche" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_reti_servizio_acquedotti" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_reti_servizio_fognature" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_reti_servizio_impianti_depurazione" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_reti_servizio_linee_elettriche" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_reti_servizio_comunicazione" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_reti_servizio_gasdotti" text COLLATE "pg_catalog"."default",
  "danni_cose_infrastrutture_reti_servizio_metanodotti_oleodotti" text COLLATE "pg_catalog"."default",
  "danni_cose_attivita_produttive" text COLLATE "pg_catalog"."default",
  "danni_cose_altro" text COLLATE "pg_catalog"."default",
  "note_danni_cose" text COLLATE "pg_catalog"."default",
  "effetti_reticolo_idrografico_lungo_argini" text COLLATE "pg_catalog"."default",
  "effetti_reticolo_idrografico_in_alveo" text COLLATE "pg_catalog"."default",
  "ordinanze_sgombero" text COLLATE "pg_catalog"."default",
  "ordinanze_chiusura_infrastrutture" text COLLATE "pg_catalog"."default",
  "interventi_provvisionali_messa_sicurezza" text COLLATE "pg_catalog"."default",
  "note_azioni_emergenza" text COLLATE "pg_catalog"."default",
  "valutazione_rischio_scenario_post_evento" text COLLATE "pg_catalog"."default",
  "rischio_residuo" text COLLATE "pg_catalog"."default",
  "studi_indagini" text COLLATE "pg_catalog"."default",
  "sistemi_sorveglianza_monitoraggio_strumentale" text COLLATE "pg_catalog"."default",
  "interventi_strutturali_mitigazione_rischio_residuo" text COLLATE "pg_catalog"."default",
  "ipotesi_tempi_messa_sicurezza" text COLLATE "pg_catalog"."default",
  "ipotesi_costi_messa_sicurezza" text COLLATE "pg_catalog"."default",
  "ipotesi_tempi_ripristino" text COLLATE "pg_catalog"."default",
  "ipotesi_costi_ripristino" text COLLATE "pg_catalog"."default",
  "foto_01" varchar(255) COLLATE "pg_catalog"."default",
  "foto_02" varchar(255) COLLATE "pg_catalog"."default",
  "foto_03" varchar(255) COLLATE "pg_catalog"."default",
  "foto_04" varchar(255) COLLATE "pg_catalog"."default",
  "foto_05" varchar(255) COLLATE "pg_catalog"."default",
  "foto_06" varchar(255) COLLATE "pg_catalog"."default",
  "foto_07" varchar(255) COLLATE "pg_catalog"."default",
  "foto_08" varchar(255) COLLATE "pg_catalog"."default",
  "foto_09" varchar(255) COLLATE "pg_catalog"."default",
  "foto_10" varchar(255) COLLATE "pg_catalog"."default",
  "video_01" varchar(255) COLLATE "pg_catalog"."default",
  "video_02" varchar(255) COLLATE "pg_catalog"."default",
  "video_03" varchar(255) COLLATE "pg_catalog"."default",
  "documento_01" varchar(255) COLLATE "pg_catalog"."default",
  "documento_02" varchar(255) COLLATE "pg_catalog"."default",
  "documento_03" varchar(255) COLLATE "pg_catalog"."default",
  "documento_04" varchar(255) COLLATE "pg_catalog"."default",
  "documento_05" varchar(255) COLLATE "pg_catalog"."default",
  "documento_06" varchar(255) COLLATE "pg_catalog"."default",
  "documento_07" varchar(255) COLLATE "pg_catalog"."default",
  "documento_08" varchar(255) COLLATE "pg_catalog"."default",
  "documento_09" varchar(255) COLLATE "pg_catalog"."default",
  "documento_10" varchar(255) COLLATE "pg_catalog"."default",
  "data_compilazione" timestamp(6) NOT NULL,
  "data_ultima_modifica" timestamp(6),
  "utente_compilazione" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "utente_ultima_modifica" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."rilevamento_effetti_territorio" OWNER TO "dbRoot";

-- ----------------------------
-- Primary Key structure for table rilevamento_effetti_territorio
-- ----------------------------
ALTER TABLE "public"."rilevamento_effetti_territorio" ADD CONSTRAINT "rilevamento_effetti_territorio_pkey" PRIMARY KEY ("id");

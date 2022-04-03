# syntax=docker/dockerfile:1

FROM neo4j:4.4.5-community
ENV NEO4J_ACCEPT_LICENSE_AGREEMENT=yes
ENV NEO4JLABS_PLUGINS='["apoc", "graph-data-science"]'
ENV NEO4J_HOME='/var/lib/neo4j'
ENV NEO4J_dbms_directories_data="${NEO4J_HOME}/data"
ENV NEO4J_dbms_directories_logs="${NEO4J_HOME}/logs"
ENV NEO4J_dbms_directories_import="${NEO4J_HOME}/import"
ENV NEO4J_dbms_directories_plugins="${NEO4J_HOME}/plugins"

ENV NEO4J_dbms_security_procedures_unrestricted="apoc.*,jwt.security.*,gds.*, custom.*"
ENV NEO4J_dbms_security_procedures_allowlist="apoc.*,apoc.coll.*,apoc.load.*,gds.*, custom.*"

CMD ["neo4j"]
<changeSet author="CHANGEME" id="CHANGEME">
<createTable tableName="data_nacimento">
  <column name="id" type="INTEGER" autoIncrement="true">
    <constraints nullable="false"/>
  </column>
  <column name="data" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="data_nacimento" constraintName="data_nacimento_pk" columnNames="id"/>
<createSequence sequenceName="data_nacimento_id_seq_1"/>

<createTable tableName="estado">
  <column name="Id" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
  <column name="nome" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
  <column name="sigla" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="estado" constraintName="estado_pk" columnNames="Id"/>

<createTable tableName="cidade">
  <column name="id" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
  <column name="nome" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="cidade" constraintName="cidade_pk" columnNames="id"/>

<createTable tableName="alunos">
  <column name="id" type="INTEGER">
    <constraints nullable="false"/>
  </column>
  <column name="nome" type="INTEGER">
    <constraints nullable="false"/>
  </column>
  <column name="idade" type="INTEGER">
    <constraints nullable="false"/>
  </column>
  <column name="data_nacimento_id" type="INTEGER">
    <constraints nullable="false"/>
  </column>
  <column name="id_1" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="alunos" constraintName="id" columnNames="id"/>

<createTable tableName="disciplinas_favoritas_ano">
  <column name="id" type="INTEGER">
    <constraints nullable="false"/>
  </column>
  <column name="nome" type="VARCHAR(0)">
    <constraints nullable="false"/>
  </column>
</createTable>
<addPrimaryKey tableName="disciplinas_favoritas_ano" constraintName="disciplinas_favoritas_ano_pk" columnNames="id"/>

<addForeignKeyConstraint baseTableName="alunos" constraintName="data_nacimento_alunos_fk" baseColumnNames="data_nacimento_id" referencedTableName="data_nacimento" referencedColumnNames="id"/>

<addForeignKeyConstraint baseTableName="cidade" constraintName="estado_cidade_fk" baseColumnNames="id" referencedTableName="estado" referencedColumnNames="Id"/>

<addForeignKeyConstraint baseTableName="alunos" constraintName="cidade_alunos_fk" baseColumnNames="id_1" referencedTableName="cidade" referencedColumnNames="id"/>

<addForeignKeyConstraint baseTableName="disciplinas_favoritas_ano" constraintName="alunos_disciplinas_favoritas_ano_fk" baseColumnNames="id" referencedTableName="alunos" referencedColumnNames="id"/>
</changeSet>

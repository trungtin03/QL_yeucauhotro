/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     03/12/2024 16:03:27                          */
/*==============================================================*/

create database Tech_Support_Ticket
go
use Tech_Support_Ticket
go
if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbllichsuthaydoiyeucau') and o.name = 'FK_TBLLICHS_REFERENCE_TBLNGUOI')
alter table tbllichsuthaydoiyeucau
   drop constraint FK_TBLLICHS_REFERENCE_TBLNGUOI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tbllichsuthaydoiyeucau') and o.name = 'FK_TBLLICHS_REFERENCE_TBLYEUCA')
alter table tbllichsuthaydoiyeucau
   drop constraint FK_TBLLICHS_REFERENCE_TBLYEUCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblnguoidung_phongban') and o.name = 'FK_TBLNGUOI_REFERENCE_TBLNGUOI')
alter table tblnguoidung_phongban
   drop constraint FK_TBLNGUOI_REFERENCE_TBLNGUOI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblnguoidung_phongban') and o.name = 'FK_TBLNGUOI_REFERENCE_TBLPHONG')
alter table tblnguoidung_phongban
   drop constraint FK_TBLNGUOI_REFERENCE_TBLPHONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblquyen') and o.name = 'FK_TBLQUYEN_REFERENCE_TBLCHUCN')
alter table tblquyen
   drop constraint FK_TBLQUYEN_REFERENCE_TBLCHUCN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblquyen_phongban') and o.name = 'FK_TBLQUYEN_REFERENCE_TBLQUYEN')
alter table tblquyen_phongban
   drop constraint FK_TBLQUYEN_REFERENCE_TBLQUYEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblquyen_phongban') and o.name = 'FK_TBLQUYEN_REFERENCE_TBLPHONG')
alter table tblquyen_phongban
   drop constraint FK_TBLQUYEN_REFERENCE_TBLPHONG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblyeucauhotrokythuat') and o.name = 'FK_TBLYEUCA_REFERENCE_TBLKHACH')
alter table tblyeucauhotrokythuat
   drop constraint FK_TBLYEUCA_REFERENCE_TBLKHACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('tblyeucauhotrokythuat') and o.name = 'FK_TBLYEUCA_REFERENCE_TBLPHONG')
alter table tblyeucauhotrokythuat
   drop constraint FK_TBLYEUCA_REFERENCE_TBLPHONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblchucnang')
            and   type = 'U')
   drop table tblchucnang
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblkhachhang')
            and   type = 'U')
   drop table tblkhachhang
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tbllichsuthaydoiyeucau')
            and   type = 'U')
   drop table tbllichsuthaydoiyeucau
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblnguoidung')
            and   type = 'U')
   drop table tblnguoidung
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblnguoidung_phongban')
            and   type = 'U')
   drop table tblnguoidung_phongban
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblphongban')
            and   type = 'U')
   drop table tblphongban
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblquyen')
            and   type = 'U')
   drop table tblquyen
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblquyen_phongban')
            and   type = 'U')
   drop table tblquyen_phongban
go

if exists (select 1
            from  sysobjects
           where  id = object_id('tblyeucauhotrokythuat')
            and   type = 'U')
   drop table tblyeucauhotrokythuat
go

/*==============================================================*/
/* Table: tblchucnang                                           */
/*==============================================================*/
create table tblchucnang (
   ma_chuc_nang         varchar(10)          not null,
   ten_chuc_nang        nvarchar(100)        null,
   constraint PK_TBLCHUCNANG primary key (ma_chuc_nang)
)
go

/*==============================================================*/
/* Table: tblkhachhang                                          */
/*==============================================================*/
create table tblkhachhang (
   ma_khach_hang        varchar(10)          not null,
   ho_khach_hang        nvarchar(50)         null,
   ten_khach_hang       nvarchar(10)         null,
   email                varchar(50)          null,
   so_dien_thoai        varchar(15)          null,
   ten_cong_ty          nvarchar(100)        null,
   ma_so_thue           varchar(15)          null,
   phan_mem             nvarchar(100)        null,
   website              varchar(100)         null,
   password             varchar(50)          null,
   ngay_kich_hoat       datetime             null,
   trang_thai           bit                  null,
   constraint PK_TBLKHACHHANG primary key (ma_khach_hang)
)
go

/*==============================================================*/
/* Table: tbllichsuthaydoiyeucau                                */
/*==============================================================*/
create table tbllichsuthaydoiyeucau (
   ma_lich_su           varchar(20)          not null,
   ma_nhan_vien         varchar(10)          null,
   ma_yeu_cau           varchar(10)          null,
   trang_thai_xu_ly     varchar(30)          null,
   noi_dung             nvarchar(1000)       null,
   loai_thay_doi        nvarchar(50)         null,
   constraint PK_TBLLICHSUTHAYDOIYEUCAU primary key (ma_lich_su)
)
go

/*==============================================================*/
/* Table: tblnguoidung                                          */
/*==============================================================*/
create table tblnguoidung (
   ma_nguoi_dung        varchar(10)          not null,
   ho_nguoi_dung        nvarchar(50)         null,
   ten_nguoi_dung       nvarchar(10)         null,
   email                varchar(50)          null,
   so_dien_thoai        varchar(15)          null,
   password             varchar(50)          null,
   trang_thai           bit                  null,
   constraint PK_TBLNGUOIDUNG primary key (ma_nguoi_dung)
)
go

/*==============================================================*/
/* Table: tblnguoidung_phongban                                 */
/*==============================================================*/
create table tblnguoidung_phongban (
   ma_nguoi_dung        varchar(10)          not null,
   ma_phong_ban         varchar(10)          not null,
   constraint PK_TBLNGUOIDUNG_PHONGBAN primary key (ma_nguoi_dung, ma_phong_ban)
)
go

/*==============================================================*/
/* Table: tblphongban                                           */
/*==============================================================*/
create table tblphongban (
   ma_phong_ban         varchar(10)          not null,
   ten_phong_ban        varchar(50)          null,
   trang_thai           bit                  null,
   constraint PK_TBLPHONGBAN primary key (ma_phong_ban)
)
go

/*==============================================================*/
/* Table: tblquyen                                              */
/*==============================================================*/
create table tblquyen (
   ma_quyen             varchar(10)          not null,
   ma_chuc_nang         varchar(10)          null,
   ten_quyen            nvarchar(50)         null,
   constraint PK_TBLQUYEN primary key (ma_quyen)
)
go

/*==============================================================*/
/* Table: tblquyen_phongban                                     */
/*==============================================================*/
create table tblquyen_phongban (
   ma_quyen             varchar(10)          not null,
   ma_phong_ban         varchar(10)          not null,
   constraint PK_TBLQUYEN_PHONGBAN primary key (ma_quyen, ma_phong_ban)
)
go

/*==============================================================*/
/* Table: tblyeucauhotrokythuat                                 */
/*==============================================================*/
create table tblyeucauhotrokythuat (
   ma_yeu_cau           varchar(10)          not null,
   ten_yeu_cau          nvarchar(100)        null,
   noi_dung_yeu_cau     nvarchar(1000)       null,
   ngay_tiep_nhan       datetime             null,
   ngay_xu_ly           datetime             null,
   trang_thai_xu_ly     nvarchar(30)         null,
   ma_khach_hang        varchar(10)          null,
   ma_phong_ban         varchar(10)          null,
   constraint PK_TBLYEUCAUHOTROKYTHUAT primary key (ma_yeu_cau)
)
go

alter table tbllichsuthaydoiyeucau
   add constraint FK_TBLLICHS_REFERENCE_TBLNGUOI foreign key (ma_nhan_vien)
      references tblnguoidung (ma_nguoi_dung)
go

alter table tbllichsuthaydoiyeucau
   add constraint FK_TBLLICHS_REFERENCE_TBLYEUCA foreign key (ma_yeu_cau)
      references tblyeucauhotrokythuat (ma_yeu_cau)
go

alter table tblnguoidung_phongban
   add constraint FK_TBLNGUOI_REFERENCE_TBLNGUOI foreign key (ma_nguoi_dung)
      references tblnguoidung (ma_nguoi_dung)
go

alter table tblnguoidung_phongban
   add constraint FK_TBLNGUOI_REFERENCE_TBLPHONG foreign key (ma_phong_ban)
      references tblphongban (ma_phong_ban)
go

alter table tblquyen
   add constraint FK_TBLQUYEN_REFERENCE_TBLCHUCN foreign key (ma_chuc_nang)
      references tblchucnang (ma_chuc_nang)
go

alter table tblquyen_phongban
   add constraint FK_TBLQUYEN_REFERENCE_TBLQUYEN foreign key (ma_quyen)
      references tblquyen (ma_quyen)
go

alter table tblquyen_phongban
   add constraint FK_TBLQUYEN_REFERENCE_TBLPHONG foreign key (ma_phong_ban)
      references tblphongban (ma_phong_ban)
go

alter table tblyeucauhotrokythuat
   add constraint FK_TBLYEUCA_REFERENCE_TBLKHACH foreign key (ma_khach_hang)
      references tblkhachhang (ma_khach_hang)
go

alter table tblyeucauhotrokythuat
   add constraint FK_TBLYEUCA_REFERENCE_TBLPHONG foreign key (ma_phong_ban)
      references tblphongban (ma_phong_ban)
go


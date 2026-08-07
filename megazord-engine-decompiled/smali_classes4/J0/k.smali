.class public final LJ0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS0/e;

.field public static final b:LS0/e;

.field public static final c:LS0/e;

.field public static final d:LS0/e;

.field public static final e:LS0/e;

.field public static final f:LS0/e;

.field public static final g:LS0/e;

.field public static final h:LS0/e;

.field public static final i:LS0/e;

.field public static final j:LS0/e;

.field public static final k:LS0/e;

.field public static final l:LS0/e;

.field public static final m:LS0/e;

.field public static final n:LS0/e;

.field public static final o:LS0/e;

.field public static final p:LS0/e;

.field public static final q:[LS0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, LS0/e;

    const-string v1, "account_capability_api"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LJ0/k;->a:LS0/e;

    new-instance v1, LS0/e;

    const-string v4, "account_data_service"

    const-wide/16 v5, 0x6

    invoke-direct {v1, v4, v5, v6}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, LJ0/k;->b:LS0/e;

    new-instance v4, LS0/e;

    const-string v5, "account_data_service_legacy"

    invoke-direct {v4, v5, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v4, LJ0/k;->c:LS0/e;

    new-instance v5, LS0/e;

    const-string v6, "account_data_service_token"

    const-wide/16 v7, 0x8

    invoke-direct {v5, v6, v7, v8}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v5, LJ0/k;->d:LS0/e;

    new-instance v6, LS0/e;

    const-string v7, "account_data_service_visibility"

    invoke-direct {v6, v7, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v6, LJ0/k;->e:LS0/e;

    new-instance v7, LS0/e;

    const-string v8, "config_sync"

    invoke-direct {v7, v8, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v7, LJ0/k;->f:LS0/e;

    new-instance v8, LS0/e;

    const-string v9, "device_account_api"

    invoke-direct {v8, v9, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v8, LJ0/k;->g:LS0/e;

    new-instance v9, LS0/e;

    const-string v10, "device_account_jwt_creation"

    invoke-direct {v9, v10, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v9, LJ0/k;->h:LS0/e;

    new-instance v10, LS0/e;

    const-string v11, "gaiaid_primary_email_api"

    invoke-direct {v10, v11, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v10, LJ0/k;->i:LS0/e;

    new-instance v11, LS0/e;

    const-string v12, "get_restricted_accounts_api"

    invoke-direct {v11, v12, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v11, LJ0/k;->j:LS0/e;

    new-instance v12, LS0/e;

    const-string v13, "google_auth_service_accounts"

    const-wide/16 v14, 0x2

    invoke-direct {v12, v13, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v12, LJ0/k;->k:LS0/e;

    new-instance v13, LS0/e;

    const-string v14, "google_auth_service_token"

    const-wide/16 v2, 0x3

    invoke-direct {v13, v14, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v13, LJ0/k;->l:LS0/e;

    new-instance v14, LS0/e;

    const-string v2, "hub_mode_api"

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    const-wide/16 v12, 0x1

    invoke-direct {v14, v2, v12, v13}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v14, LJ0/k;->m:LS0/e;

    new-instance v15, LS0/e;

    const-string v2, "work_account_client_is_whitelisted"

    invoke-direct {v15, v2, v12, v13}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v15, LJ0/k;->n:LS0/e;

    new-instance v3, LS0/e;

    const-string v2, "factory_reset_protection_api"

    invoke-direct {v3, v2, v12, v13}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v3, LJ0/k;->o:LS0/e;

    new-instance v2, LS0/e;

    move-object/from16 v16, v3

    const-string v3, "google_auth_api"

    invoke-direct {v2, v3, v12, v13}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v2, LJ0/k;->p:LS0/e;

    move-object/from16 v19, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    filled-new-array/range {v0 .. v15}, [LS0/e;

    move-result-object v0

    sput-object v0, LJ0/k;->q:[LS0/e;

    return-void
.end method

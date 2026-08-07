.class public final Lp1/c;
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

.field public static final q:LS0/e;

.field public static final r:LS0/e;

.field public static final s:LS0/e;

.field public static final t:[LS0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, LS0/e;

    move-object v0, v1

    const-string v2, "cancel_target_direct_transfer"

    const-wide/16 v14, 0x1

    invoke-direct {v1, v2, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lp1/c;->a:LS0/e;

    new-instance v2, LS0/e;

    move-object v1, v2

    const-string v3, "delete_credential"

    invoke-direct {v2, v3, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lp1/c;->b:LS0/e;

    new-instance v3, LS0/e;

    move-object v2, v3

    const-string v4, "delete_device_public_key"

    invoke-direct {v3, v4, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lp1/c;->c:LS0/e;

    new-instance v4, LS0/e;

    move-object v3, v4

    const-string v5, "get_or_generate_device_public_key"

    invoke-direct {v4, v5, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lp1/c;->d:LS0/e;

    new-instance v5, LS0/e;

    move-object v4, v5

    const-string v6, "get_passkeys"

    invoke-direct {v5, v6, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lp1/c;->e:LS0/e;

    new-instance v6, LS0/e;

    move-object v5, v6

    const-string v7, "update_passkey"

    invoke-direct {v6, v7, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lp1/c;->f:LS0/e;

    new-instance v7, LS0/e;

    move-object v6, v7

    const-string v8, "is_user_verifying_platform_authenticator_available_for_credential"

    invoke-direct {v7, v8, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lp1/c;->g:LS0/e;

    new-instance v8, LS0/e;

    move-object v7, v8

    const-string v9, "is_user_verifying_platform_authenticator_available"

    invoke-direct {v8, v9, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lp1/c;->h:LS0/e;

    new-instance v9, LS0/e;

    move-object v8, v9

    const-string v10, "privileged_api_list_credentials"

    const-wide/16 v12, 0x2

    invoke-direct {v9, v10, v12, v13}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v9, Lp1/c;->i:LS0/e;

    new-instance v10, LS0/e;

    move-object v9, v10

    const-string v11, "start_target_direct_transfer"

    invoke-direct {v10, v11, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v10, Lp1/c;->j:LS0/e;

    new-instance v11, LS0/e;

    move-object v10, v11

    const-string v12, "zero_party_api_register"

    const-wide/16 v14, 0x3

    invoke-direct {v11, v12, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v11, Lp1/c;->k:LS0/e;

    new-instance v12, LS0/e;

    move-object v11, v12

    const-string v13, "zero_party_api_sign"

    invoke-direct {v12, v13, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v12, Lp1/c;->l:LS0/e;

    new-instance v13, LS0/e;

    const-wide/16 v14, 0x2

    move-object v12, v13

    move-object/from16 v20, v0

    const-string v0, "zero_party_api_list_discoverable_credentials"

    invoke-direct {v13, v0, v14, v15}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lp1/c;->m:LS0/e;

    new-instance v0, LS0/e;

    move-object v13, v0

    const-string v14, "zero_party_api_authenticate_passkey"

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    const-wide/16 v1, 0x1

    invoke-direct {v0, v14, v1, v2}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lp1/c;->n:LS0/e;

    new-instance v0, LS0/e;

    move-object v14, v0

    const-string v15, "zero_party_api_register_passkey"

    invoke-direct {v0, v15, v1, v2}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lp1/c;->o:LS0/e;

    new-instance v0, LS0/e;

    move-object v15, v0

    move-object/from16 v19, v3

    const-string v3, "zero_party_api_get_hybrid_client_registration_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lp1/c;->p:LS0/e;

    new-instance v0, LS0/e;

    move-object/from16 v16, v0

    const-string v3, "zero_party_api_get_hybrid_client_sign_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lp1/c;->q:LS0/e;

    new-instance v0, LS0/e;

    move-object/from16 v17, v0

    const-string v3, "get_browser_hybrid_client_sign_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lp1/c;->r:LS0/e;

    new-instance v0, LS0/e;

    move-object/from16 v18, v0

    const-string v3, "get_browser_hybrid_client_registration_pending_intent"

    invoke-direct {v0, v3, v1, v2}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lp1/c;->s:LS0/e;

    move-object/from16 v3, v19

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    filled-new-array/range {v0 .. v18}, [LS0/e;

    move-result-object v0

    sput-object v0, Lp1/c;->t:[LS0/e;

    return-void
.end method

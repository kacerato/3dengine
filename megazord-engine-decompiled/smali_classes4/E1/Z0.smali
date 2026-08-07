.class public final LE1/Z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS0/e;

.field public static final b:LS0/e;

.field public static final c:LS0/e;

.field public static final d:LS0/e;

.field public static final e:LS0/e;

.field public static final f:[LS0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LS0/e;

    const-string v1, "name_ulr_private"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, LE1/Z0;->a:LS0/e;

    new-instance v1, LS0/e;

    const-string v4, "name_sleep_segment_request"

    invoke-direct {v1, v4, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, LE1/Z0;->b:LS0/e;

    new-instance v4, LS0/e;

    const-string v5, "support_context_feature_id"

    invoke-direct {v4, v5, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v4, LE1/Z0;->c:LS0/e;

    new-instance v5, LS0/e;

    const-string v6, "get_current_location"

    invoke-direct {v5, v6, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v5, LE1/Z0;->d:LS0/e;

    new-instance v6, LS0/e;

    const-string v7, "get_last_activity_feature_id"

    invoke-direct {v6, v7, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v6, LE1/Z0;->e:LS0/e;

    filled-new-array {v0, v1, v4, v5, v6}, [LS0/e;

    move-result-object v0

    sput-object v0, LE1/Z0;->f:[LS0/e;

    return-void
.end method

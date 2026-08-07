.class public final Lw1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS0/e;

.field public static final b:LS0/e;

.field public static final c:LS0/e;

.field public static final d:LS0/e;

.field public static final e:[LS0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LS0/e;

    const-string v1, "sms_code_autofill"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lw1/d;->a:LS0/e;

    new-instance v1, LS0/e;

    const-string v4, "sms_code_browser"

    invoke-direct {v1, v4, v2, v3}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lw1/d;->b:LS0/e;

    new-instance v2, LS0/e;

    const-string v3, "sms_retrieve"

    const-wide/16 v4, 0x1

    invoke-direct {v2, v3, v4, v5}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lw1/d;->c:LS0/e;

    new-instance v3, LS0/e;

    const-string v4, "user_consent"

    const-wide/16 v5, 0x3

    invoke-direct {v3, v4, v5, v6}, LS0/e;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lw1/d;->d:LS0/e;

    filled-new-array {v0, v1, v2, v3}, [LS0/e;

    move-result-object v0

    sput-object v0, Lw1/d;->e:[LS0/e;

    return-void
.end method

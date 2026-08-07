.class public LE1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:LE1/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:LE1/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:LE1/A;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "LB1/A;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "LB1/A;",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, LE1/s;->e:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, LE1/p0;

    invoke-direct {v1}, LE1/p0;-><init>()V

    sput-object v1, LE1/s;->f:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "LocationServices.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, LE1/s;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, LB1/w0;

    invoke-direct {v0}, LB1/w0;-><init>()V

    sput-object v0, LE1/s;->b:LE1/i;

    new-instance v0, LB1/g;

    invoke-direct {v0}, LB1/g;-><init>()V

    sput-object v0, LE1/s;->c:LE1/m;

    new-instance v0, LB1/K;

    invoke-direct {v0}, LB1/K;-><init>()V

    sput-object v0, LE1/s;->d:LE1/A;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)LE1/j;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LE1/j;

    invoke-direct {v0, p0}, LE1/j;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)LE1/j;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LE1/j;

    invoke-direct {v0, p0}, LE1/j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)LE1/n;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LE1/n;

    invoke-direct {v0, p0}, LE1/n;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)LE1/n;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LE1/n;

    invoke-direct {v0, p0}, LE1/n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e(Landroid/app/Activity;)LE1/B;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LE1/B;

    invoke-direct {v0, p0}, LE1/B;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)LE1/B;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LE1/B;

    invoke-direct {v0, p0}, LE1/B;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static g(Lcom/google/android/gms/common/api/l;)LB1/A;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v2, v3}, LX0/A;->b(ZLjava/lang/Object;)V

    sget-object v2, LE1/s;->e:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/l;->o(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p0

    check-cast p0, LB1/A;

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    const-string v1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, LX0/A;->y(ZLjava/lang/Object;)V

    return-object p0
.end method

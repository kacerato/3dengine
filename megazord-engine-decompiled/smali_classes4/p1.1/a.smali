.class public Lp1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "RESPONSE_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "FIDO2_RESPONSE_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "FIDO2_ERROR_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "FIDO2_CREDENTIAL_EXTRA"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/a$g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/common/api/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final g:LA1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lp1/a;->e:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/api/a;

    new-instance v2, LA1/c;

    invoke-direct {v2}, LA1/c;-><init>()V

    const-string v3, "Fido.U2F_ZERO_PARTY_API"

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v1, Lp1/a;->f:Lcom/google/android/gms/common/api/a;

    new-instance v0, LA1/b;

    invoke-direct {v0}, LA1/b;-><init>()V

    sput-object v0, Lp1/a;->g:LA1/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lq1/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lq1/a;

    invoke-direct {v0, p0}, Lq1/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lq1/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lq1/a;

    invoke-direct {v0, p0}, Lq1/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)Lq1/c;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lq1/c;

    invoke-direct {v0, p0}, Lq1/c;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lq1/c;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lq1/c;

    invoke-direct {v0, p0}, Lq1/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e(Landroid/app/Activity;)Ls1/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ls1/a;

    invoke-direct {v0, p0}, Ls1/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ls1/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ls1/a;

    invoke-direct {v0, p0}, Ls1/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

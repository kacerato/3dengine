.class public final Lz1/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lz1/B;

.field public final c:Lz1/n;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lz1/B;Lz1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/z0;->a:Landroid/app/Application;

    iput-object p2, p0, Lz1/z0;->b:Lz1/B;

    iput-object p3, p0, Lz1/z0;->c:Lz1/n;

    return-void
.end method

.method public static synthetic a(Lz1/z0;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lz1/z0;->a:Landroid/app/Application;

    return-object p0
.end method

.method public static synthetic b(Lz1/z0;)Lz1/B;
    .locals 0

    iget-object p0, p0, Lz1/z0;->b:Lz1/B;

    return-object p0
.end method

.method public static synthetic c(Lz1/z0;)Lz1/n;
    .locals 0

    iget-object p0, p0, Lz1/z0;->c:Lz1/n;

    return-object p0
.end method


# virtual methods
.method public final d(Landroid/app/Activity;LP2/d;)Lz1/X;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzj;
        }
    .end annotation

    invoke-virtual {p2}, LP2/d;->a()LP2/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, LP2/a$a;

    iget-object v1, p0, Lz1/z0;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, LP2/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, LP2/a$a;->b()LP2/a;

    move-result-object v0

    :cond_0
    move-object v4, v0

    new-instance v0, Lz1/D0;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lz1/D0;-><init>(Lz1/z0;Landroid/app/Activity;LP2/a;LP2/d;Lz1/y0;)V

    invoke-static {v0}, Lz1/D0;->a(Lz1/D0;)Lz1/X;

    move-result-object p1

    return-object p1
.end method

.class public Lokhttp3/c$d;
.super Lokhttp3/F;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Lah/d$f;

.field public final d:Llh/e;

.field public final e:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lah/d$f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/F;-><init>()V

    iput-object p1, p0, Lokhttp3/c$d;->c:Lah/d$f;

    iput-object p2, p0, Lokhttp3/c$d;->e:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/c$d;->f:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lah/d$f;->e(I)Llh/y;

    move-result-object p2

    new-instance p3, Lokhttp3/c$d$a;

    invoke-direct {p3, p0, p2, p1}, Lokhttp3/c$d$a;-><init>(Lokhttp3/c$d;Llh/y;Lah/d$f;)V

    invoke-static {p3}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/c$d;->d:Llh/e;

    return-void
.end method


# virtual methods
.method public g()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lokhttp3/c$d;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public h()Lokhttp3/x;
    .locals 1

    iget-object v0, p0, Lokhttp3/c$d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/x;->d(Ljava/lang/String;)Lokhttp3/x;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o()Llh/e;
    .locals 1

    iget-object v0, p0, Lokhttp3/c$d;->d:Llh/e;

    return-object v0
.end method

.class public final LL6/j$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LL6/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:D

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayName"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LL6/j$g;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;LL6/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LL6/j$g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(LL6/j$g;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LL6/j$g;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LL6/j$g;LL6/e;)V
    .locals 0

    invoke-virtual {p0, p1}, LL6/j$g;->e(LL6/e;)V

    return-void
.end method

.method public static synthetic c(LL6/j$g;)D
    .locals 2

    invoke-virtual {p0}, LL6/j$g;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(LL6/j$g;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LL6/j$g;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(LL6/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    iget-wide v0, p0, LL6/j$g;->b:D

    invoke-virtual {p1}, LL6/e;->j()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, LL6/j$g;->b:D

    iget-wide v0, p0, LL6/j$g;->c:J

    invoke-virtual {p1}, LL6/e;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, LL6/j$g;->c:J

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LL6/j$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LL6/j$g;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LL6/j$g;->b:D

    double-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lgd/b;->v0(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LL6/j$g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()D
    .locals 2

    iget-wide v0, p0, LL6/j$g;->b:D

    return-wide v0
.end method

.class public Ld5/d$k$a;
.super Ld5/d$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/d$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ld5/d$k;


# direct methods
.method public constructor <init>(Ld5/d$k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$1",
            "name",
            "info"
        }
    .end annotation

    iput-object p1, p0, Ld5/d$k$a;->c:Ld5/d$k;

    invoke-direct {p0, p2, p3}, Ld5/d$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Ld5/d$k$a;->c:Ld5/d$k;

    iget-object v0, v0, Ld5/d$k;->b:Ld5/d;

    const-string v1, "Available commands:"

    invoke-static {v0, v1}, Ld5/d;->q1(Ld5/d;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ld5/d$k$a;->c:Ld5/d$k;

    iget-object v2, v2, Ld5/d$k;->b:Ld5/d;

    invoke-static {v2}, Ld5/d;->r1(Ld5/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, " == "

    const-string v4, "  "

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ld5/d$k$a;->c:Ld5/d$k;

    iget-object v2, v2, Ld5/d$k;->b:Ld5/d;

    invoke-static {v2}, Ld5/d;->r1(Ld5/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld5/d$r;

    iget-object v5, p0, Ld5/d$k$a;->c:Ld5/d$k;

    iget-object v5, v5, Ld5/d$k;->b:Ld5/d;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ld5/d$r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ld5/d$r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Ld5/d;->q1(Ld5/d;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {}, LH8/d;->h()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, LH8/d;->g(I)Ld5/e;

    move-result-object v1

    iget-object v2, p0, Ld5/d$k$a;->c:Ld5/d$k;

    iget-object v2, v2, Ld5/d$k;->b:Ld5/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ld5/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ld5/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ld5/d;->q1(Ld5/d;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

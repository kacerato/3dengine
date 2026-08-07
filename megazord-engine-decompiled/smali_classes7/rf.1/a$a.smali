.class public final Lrf/a$a;
.super Lmf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final o:J = 0x4e215678802bc8d0L


# instance fields
.field public final n:Lrf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;Lrf/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "Lrf/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmf/f;-><init>(LCi/c;)V

    iput-object p2, p0, Lrf/a$a;->n:Lrf/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lmf/f;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Lmf/f;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrf/a$a;->n:Lrf/a;

    invoke-virtual {v0, p0}, Lrf/a;->Z8(Lrf/a$a;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lmf/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

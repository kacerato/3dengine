.class public final Lif/W$a;
.super Lbf/l;
.source "SourceFile"

# interfaces
.implements LTe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/W;
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
        "Lbf/l<",
        "TT;>;",
        "LTe/N<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = 0x348c813e921c2851L


# instance fields
.field public k:LVe/c;


# direct methods
.method public constructor <init>(LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbf/l;-><init>(LTe/I;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbf/l;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lbf/l;->dispose()V

    iget-object v0, p0, Lif/W$a;->k:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lif/W$a;->k:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lif/W$a;->k:LVe/c;

    iget-object p1, p0, Lbf/l;->c:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbf/l;->h(Ljava/lang/Throwable;)V

    return-void
.end method

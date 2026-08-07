.class public final Ldf/t0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXe/o<",
        "TT;",
        "LCi/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/t0$f;->b:LXe/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LCi/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LCi/b<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ldf/t0$f;->b:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The itemDelay returned a null Publisher"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/b;

    new-instance v1, Ldf/F1;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v0, v2, v3}, Ldf/F1;-><init>(LCi/b;J)V

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object v0

    invoke-virtual {v1, v0}, LTe/l;->M3(LXe/o;)LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->C1(Ljava/lang/Object;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ldf/t0$f;->a(Ljava/lang/Object;)LCi/b;

    move-result-object p1

    return-object p1
.end method

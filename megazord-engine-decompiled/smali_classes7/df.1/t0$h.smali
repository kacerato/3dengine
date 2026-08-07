.class public final Ldf/t0$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXe/o<",
        "LTe/l<",
        "TT;>;",
        "LCi/b<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final c:LTe/J;


# direct methods
.method public constructor <init>(LXe/o;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/t0$h;->b:LXe/o;

    iput-object p2, p0, Ldf/t0$h;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public a(LTe/l;)LCi/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;)",
            "LCi/b<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ldf/t0$h;->b:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null Publisher"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/b;

    invoke-static {p1}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p1

    iget-object v0, p0, Ldf/t0$h;->c:LTe/J;

    invoke-virtual {p1, v0}, LTe/l;->n4(LTe/J;)LTe/l;

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

    check-cast p1, LTe/l;

    invoke-virtual {p0, p1}, Ldf/t0$h;->a(LTe/l;)LCi/b;

    move-result-object p1

    return-object p1
.end method

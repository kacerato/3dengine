.class public final Lgf/p0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
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
        "LTe/B<",
        "TT;>;",
        "LTe/G<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/p0$l;->b:LXe/o;

    iput-object p2, p0, Lgf/p0$l;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public a(LTe/B;)LTe/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;)",
            "LTe/G<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lgf/p0$l;->b:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null ObservableSource"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/G;

    invoke-static {p1}, LTe/B;->Q7(LTe/G;)LTe/B;

    move-result-object p1

    iget-object v0, p0, Lgf/p0$l;->c:LTe/J;

    invoke-virtual {p1, v0}, LTe/B;->c4(LTe/J;)LTe/B;

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

    check-cast p1, LTe/B;

    invoke-virtual {p0, p1}, Lgf/p0$l;->a(LTe/B;)LTe/G;

    move-result-object p1

    return-object p1
.end method

.class public final Lgf/p0$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXe/o<",
        "TT;",
        "LTe/G<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXe/c;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/c<",
            "-TT;-TU;+TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/p0$e;->b:LXe/c;

    iput-object p2, p0, Lgf/p0$e;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LTe/G;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LTe/G<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lgf/p0$e;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/G;

    new-instance v1, Lgf/x0;

    new-instance v2, Lgf/p0$d;

    iget-object v3, p0, Lgf/p0$e;->b:LXe/c;

    invoke-direct {v2, v3, p1}, Lgf/p0$d;-><init>(LXe/c;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lgf/x0;-><init>(LTe/G;LXe/o;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lgf/p0$e;->a(Ljava/lang/Object;)LTe/G;

    move-result-object p1

    return-object p1
.end method

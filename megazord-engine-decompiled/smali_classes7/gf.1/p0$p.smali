.class public final Lgf/p0$p;
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
    name = "p"
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
        "Ljava/util/List<",
        "LTe/G<",
        "+TT;>;>;",
        "LTe/G<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
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
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/p0$p;->b:LXe/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)LTe/G;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/G<",
            "+TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/p0$p;->b:LXe/o;

    const/4 v1, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, LTe/B;->e8(Ljava/lang/Iterable;LXe/o;ZI)LTe/B;

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

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lgf/p0$p;->a(Ljava/util/List;)LTe/G;

    move-result-object p1

    return-object p1
.end method

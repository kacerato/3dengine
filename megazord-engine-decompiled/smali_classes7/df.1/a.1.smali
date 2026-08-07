.class public abstract Ldf/a;
.super LTe/l;
.source "SourceFile"

# interfaces
.implements Laf/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TR;>;",
        "Laf/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    const-string v0, "source is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/l;

    iput-object p1, p0, Ldf/a;->c:LTe/l;

    return-void
.end method


# virtual methods
.method public final source()LCi/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCi/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    return-object v0
.end method

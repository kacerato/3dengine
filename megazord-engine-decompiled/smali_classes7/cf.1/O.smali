.class public final Lcf/O;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lcf/O;->c:LTe/i;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lbf/A;

    invoke-direct {v0, p1}, Lbf/A;-><init>(LCi/c;)V

    iget-object p1, p0, Lcf/O;->c:LTe/i;

    invoke-interface {p1, v0}, LTe/i;->b(LTe/f;)V

    return-void
.end method

.class public final Lef/w;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/w;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, LVe/d;->a()LVe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    iget-object v0, p0, Lef/w;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

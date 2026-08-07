.class public final Ldf/v;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/v$a;
    }
.end annotation

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
.field public final c:[LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>([LCi/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/b<",
            "+TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/v;->c:[LCi/b;

    iput-boolean p2, p0, Ldf/v;->d:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/v$a;

    iget-object v1, p0, Ldf/v;->c:[LCi/b;

    iget-boolean v2, p0, Ldf/v;->d:Z

    invoke-direct {v0, v1, v2, p1}, Ldf/v$a;-><init>([LCi/b;ZLCi/c;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v0}, Ldf/v$a;->a()V

    return-void
.end method

.class public final Lef/i0;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/y<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/y;LTe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LTe/y<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-object p2, p0, Lef/i0;->c:LTe/y;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lef/i0$a;

    invoke-direct {v0, p1}, Lef/i0$a;-><init>(LTe/v;)V

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    iget-object p1, p0, Lef/i0;->c:LTe/y;

    iget-object v1, v0, Lef/i0$a;->c:Lef/i0$a$a;

    invoke-interface {p1, v1}, LTe/y;->d(LTe/v;)V

    iget-object p1, p0, Lef/a;->b:LTe/y;

    invoke-interface {p1, v0}, LTe/y;->d(LTe/v;)V

    return-void
.end method

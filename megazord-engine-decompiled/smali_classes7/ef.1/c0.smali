.class public final Lef/c0;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/y<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(LTe/y;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/y<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-object p2, p0, Lef/c0;->c:LXe/o;

    iput-boolean p3, p0, Lef/c0;->d:Z

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/a;->b:LTe/y;

    new-instance v1, Lef/c0$a;

    iget-object v2, p0, Lef/c0;->c:LXe/o;

    iget-boolean v3, p0, Lef/c0;->d:Z

    invoke-direct {v1, p1, v2, v3}, Lef/c0$a;-><init>(LTe/v;LXe/o;Z)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method

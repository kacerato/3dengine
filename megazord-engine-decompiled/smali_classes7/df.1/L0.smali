.class public final Ldf/L0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/L0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:LXe/a;


# direct methods
.method public constructor <init>(LTe/l;IZZLXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;IZZ",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput p2, p0, Ldf/L0;->d:I

    iput-boolean p3, p0, Ldf/L0;->e:Z

    iput-boolean p4, p0, Ldf/L0;->f:Z

    iput-object p5, p0, Ldf/L0;->g:LXe/a;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v7, Ldf/L0$a;

    iget v3, p0, Ldf/L0;->d:I

    iget-boolean v4, p0, Ldf/L0;->e:Z

    iget-boolean v5, p0, Ldf/L0;->f:Z

    iget-object v6, p0, Ldf/L0;->g:LXe/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ldf/L0$a;-><init>(LCi/c;IZZLXe/a;)V

    invoke-virtual {v0, v7}, LTe/l;->l6(LTe/q;)V

    return-void
.end method

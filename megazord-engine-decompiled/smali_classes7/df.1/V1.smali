.class public final Ldf/V1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/V1$a;,
        Ldf/V1$b;,
        Ldf/V1$d;,
        Ldf/V1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;",
        "LTe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TB;+",
            "LCi/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(LTe/l;LCi/b;LXe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LCi/b<",
            "TB;>;",
            "LXe/o<",
            "-TB;+",
            "LCi/b<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/V1;->d:LCi/b;

    iput-object p3, p0, Ldf/V1;->e:LXe/o;

    iput p4, p0, Ldf/V1;->f:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/V1$c;

    new-instance v2, Luf/e;

    invoke-direct {v2, p1}, Luf/e;-><init>(LCi/c;)V

    iget-object p1, p0, Ldf/V1;->d:LCi/b;

    iget-object v3, p0, Ldf/V1;->e:LXe/o;

    iget v4, p0, Ldf/V1;->f:I

    invoke-direct {v1, v2, p1, v3, v4}, Ldf/V1$c;-><init>(LCi/c;LCi/b;LXe/o;I)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method

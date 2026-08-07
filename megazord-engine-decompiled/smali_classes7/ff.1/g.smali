.class public final Lff/g;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TR;>;"
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

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(LTe/l;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lff/g;->c:LTe/l;

    iput-object p2, p0, Lff/g;->d:LXe/o;

    iput-boolean p3, p0, Lff/g;->e:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/g;->c:LTe/l;

    new-instance v1, Lff/g$a;

    iget-object v2, p0, Lff/g;->d:LXe/o;

    iget-boolean v3, p0, Lff/g;->e:Z

    invoke-direct {v1, p1, v2, v3}, Lff/g$a;-><init>(LCi/c;LXe/o;Z)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method

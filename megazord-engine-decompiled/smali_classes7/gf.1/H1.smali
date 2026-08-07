.class public final Lgf/H1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/H1$a;,
        Lgf/H1$b;,
        Lgf/H1$d;,
        Lgf/H1$c;
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
        "Lgf/a<",
        "TT;",
        "LTe/B<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TB;+",
            "LTe/G<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LTe/G;LTe/G;LXe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LTe/G<",
            "TB;>;",
            "LXe/o<",
            "-TB;+",
            "LTe/G<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/H1;->c:LTe/G;

    iput-object p3, p0, Lgf/H1;->d:LXe/o;

    iput p4, p0, Lgf/H1;->e:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/H1$c;

    new-instance v2, Lof/m;

    invoke-direct {v2, p1}, Lof/m;-><init>(LTe/I;)V

    iget-object p1, p0, Lgf/H1;->c:LTe/G;

    iget-object v3, p0, Lgf/H1;->d:LXe/o;

    iget v4, p0, Lgf/H1;->e:I

    invoke-direct {v1, v2, p1, v3, v4}, Lgf/H1$c;-><init>(LTe/I;LTe/G;LXe/o;I)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method

.class public final Lff/o;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(LTe/B;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lff/o;->b:LTe/B;

    iput-object p2, p0, Lff/o;->c:LXe/o;

    iput-boolean p3, p0, Lff/o;->d:Z

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 4

    iget-object v0, p0, Lff/o;->b:LTe/B;

    iget-object v1, p0, Lff/o;->c:LXe/o;

    invoke-static {v0, v1, p1}, Lff/r;->a(Ljava/lang/Object;LXe/o;LTe/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lff/o;->b:LTe/B;

    new-instance v1, Lff/o$a;

    iget-object v2, p0, Lff/o;->c:LXe/o;

    iget-boolean v3, p0, Lff/o;->d:Z

    invoke-direct {v1, p1, v2, v3}, Lff/o$a;-><init>(LTe/f;LXe/o;Z)V

    invoke-virtual {v0, v1}, LTe/B;->b(LTe/I;)V

    :cond_0
    return-void
.end method

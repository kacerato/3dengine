.class public final Lff/f;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/f$a;
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
.field public final b:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
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
.method public constructor <init>(LTe/l;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lff/f;->b:LTe/l;

    iput-object p2, p0, Lff/f;->c:LXe/o;

    iput-boolean p3, p0, Lff/f;->d:Z

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 4

    iget-object v0, p0, Lff/f;->b:LTe/l;

    new-instance v1, Lff/f$a;

    iget-object v2, p0, Lff/f;->c:LXe/o;

    iget-boolean v3, p0, Lff/f;->d:Z

    invoke-direct {v1, p1, v2, v3}, Lff/f$a;-><init>(LTe/f;LXe/o;Z)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method

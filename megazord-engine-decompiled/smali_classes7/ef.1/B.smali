.class public final Lef/B;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/B$a;
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
.field public final b:LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/y<",
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


# direct methods
.method public constructor <init>(LTe/y;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lef/B;->b:LTe/y;

    iput-object p2, p0, Lef/B;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    new-instance v0, Lef/B$a;

    iget-object v1, p0, Lef/B;->c:LXe/o;

    invoke-direct {v0, p1, v1}, Lef/B$a;-><init>(LTe/f;LXe/o;)V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    iget-object p1, p0, Lef/B;->b:LTe/y;

    invoke-interface {p1, v0}, LTe/y;->d(LTe/v;)V

    return-void
.end method

.class public final Lef/o;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/o$a;,
        Lef/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;"
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

.field public final c:LTe/i;


# direct methods
.method public constructor <init>(LTe/y;LTe/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LTe/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/o;->b:LTe/y;

    iput-object p2, p0, Lef/o;->c:LTe/i;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/o;->c:LTe/i;

    new-instance v1, Lef/o$b;

    iget-object v2, p0, Lef/o;->b:LTe/y;

    invoke-direct {v1, p1, v2}, Lef/o$b;-><init>(LTe/v;LTe/y;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

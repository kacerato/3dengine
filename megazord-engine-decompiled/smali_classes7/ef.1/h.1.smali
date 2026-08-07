.class public final Lef/h;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "Ljava/lang/Boolean;",
        ">;",
        "Laf/f<",
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

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LTe/y;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lef/h;->b:LTe/y;

    iput-object p2, p0, Lef/h;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/h;->b:LTe/y;

    new-instance v1, Lef/h$a;

    iget-object v2, p0, Lef/h;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lef/h$a;-><init>(LTe/N;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method

.method public source()LTe/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/y<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lef/h;->b:LTe/y;

    return-object v0
.end method

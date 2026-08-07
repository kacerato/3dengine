.class public final Lcf/t;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/t$a;
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
.field public final b:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/t;->b:LCi/b;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lcf/t;->b:LCi/b;

    new-instance v1, Lcf/t$a;

    invoke-direct {v1, p1}, Lcf/t$a;-><init>(LTe/f;)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method

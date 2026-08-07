.class public final Lcf/P;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/P$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lcf/P;->b:LTe/i;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcf/P;->b:LTe/i;

    new-instance v1, Lcf/P$a;

    invoke-direct {v1, p1}, Lcf/P$a;-><init>(LTe/I;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

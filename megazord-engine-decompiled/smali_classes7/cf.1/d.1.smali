.class public final Lcf/d;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/d$a;
    }
.end annotation


# instance fields
.field public final b:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(LCi/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/d;->b:LCi/b;

    iput p2, p0, Lcf/d;->c:I

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 3

    iget-object v0, p0, Lcf/d;->b:LCi/b;

    new-instance v1, Lcf/d$a;

    iget v2, p0, Lcf/d;->c:I

    invoke-direct {v1, p1, v2}, Lcf/d$a;-><init>(LTe/f;I)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method

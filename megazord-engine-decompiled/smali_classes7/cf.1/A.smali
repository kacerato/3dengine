.class public final Lcf/A;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/A$a;
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

.field public final d:Z


# direct methods
.method public constructor <init>(LCi/b;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/A;->b:LCi/b;

    iput p2, p0, Lcf/A;->c:I

    iput-boolean p3, p0, Lcf/A;->d:Z

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 3

    new-instance v0, Lcf/A$a;

    iget v1, p0, Lcf/A;->c:I

    iget-boolean v2, p0, Lcf/A;->d:Z

    invoke-direct {v0, p1, v1, v2}, Lcf/A$a;-><init>(LTe/f;IZ)V

    iget-object p1, p0, Lcf/A;->b:LCi/b;

    invoke-interface {p1, v0}, LCi/b;->l(LCi/c;)V

    return-void
.end method

.class public final Lcf/k;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/k$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:LTe/J;


# direct methods
.method public constructor <init>(LTe/i;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/k;->b:LTe/i;

    iput-object p2, p0, Lcf/k;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 3

    iget-object v0, p0, Lcf/k;->b:LTe/i;

    new-instance v1, Lcf/k$a;

    iget-object v2, p0, Lcf/k;->c:LTe/J;

    invoke-direct {v1, p1, v2}, Lcf/k$a;-><init>(LTe/f;LTe/J;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

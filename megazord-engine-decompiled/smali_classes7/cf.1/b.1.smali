.class public final Lcf/b;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/b$a;,
        Lcf/b$b;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/b;->b:LTe/i;

    iput-object p2, p0, Lcf/b;->c:LTe/i;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 3

    iget-object v0, p0, Lcf/b;->b:LTe/i;

    new-instance v1, Lcf/b$b;

    iget-object v2, p0, Lcf/b;->c:LTe/i;

    invoke-direct {v1, p1, v2}, Lcf/b$b;-><init>(LTe/f;LTe/i;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

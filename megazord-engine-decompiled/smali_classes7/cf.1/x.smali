.class public final Lcf/x;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/x$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/x;->b:LTe/i;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lcf/x;->b:LTe/i;

    new-instance v1, Lcf/x$a;

    invoke-direct {v1, p1}, Lcf/x$a;-><init>(LTe/f;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

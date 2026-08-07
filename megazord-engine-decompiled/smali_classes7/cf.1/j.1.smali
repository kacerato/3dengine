.class public final Lcf/j;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/j$a;
    }
.end annotation


# instance fields
.field public final b:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/j;->b:LTe/i;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lcf/j;->b:LTe/i;

    new-instance v1, Lcf/j$a;

    invoke-direct {v1, p1}, Lcf/j$a;-><init>(LTe/f;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    return-void
.end method

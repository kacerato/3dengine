.class public final Lcf/v;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/v$a;
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
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/v;->b:LTe/Q;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lcf/v;->b:LTe/Q;

    new-instance v1, Lcf/v$a;

    invoke-direct {v1, p1}, Lcf/v$a;-><init>(LTe/f;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method

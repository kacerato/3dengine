.class public abstract Lgf/a;
.super LTe/B;
.source "SourceFile"

# interfaces
.implements Laf/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TU;>;",
        "Laf/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/a;->b:LTe/G;

    return-void
.end method


# virtual methods
.method public final source()LTe/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/G<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    return-object v0
.end method

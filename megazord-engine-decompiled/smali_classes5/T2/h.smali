.class public abstract LT2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LT2/f;
.end annotation

.annotation runtime Ld3/f;
    value = "Use Escapers.nullEscaper() or another methods from the *Escapers classes"
.end annotation


# instance fields
.field public final a:LR2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/t<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LT2/g;

    invoke-direct {v0, p0}, LT2/g;-><init>(LT2/h;)V

    iput-object v0, p0, LT2/h;->a:LR2/t;

    return-void
.end method


# virtual methods
.method public final a()LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR2/t<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LT2/h;->a:LR2/t;

    return-object v0
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

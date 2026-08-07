.class public abstract LE1/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LU0/n<",
        "LB1/A;",
        "LQ1/l<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LE1/W;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, LE1/W;->a:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LE1/W;->a:Z

    return-void
.end method

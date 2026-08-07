.class public abstract Lpi/t;
.super Lpi/b;
.source "SourceFile"


# instance fields
.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpi/b;-><init>()V

    return-void
.end method


# virtual methods
.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lpi/t;->f:Z

    return v0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lpi/t;->f:Z

    return-void
.end method

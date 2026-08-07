.class public Lpi/m;
.super Lpi/b;
.source "SourceFile"


# instance fields
.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpi/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lpi/C;)V
    .locals 0

    invoke-interface {p1, p0}, Lpi/C;->d(Lpi/m;)V

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lpi/m;->f:I

    return v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lpi/m;->f:I

    return-void
.end method

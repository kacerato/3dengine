.class public Lni/c;
.super Lni/b;
.source "SourceFile"


# instance fields
.field public final e:C

.field public f:I


# direct methods
.method public constructor <init>(Lni/b;Lpi/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lni/b;-><init>(Lni/b;)V

    invoke-virtual {p2}, Lpi/w;->s()C

    move-result p1

    iput-char p1, p0, Lni/c;->e:C

    invoke-virtual {p2}, Lpi/w;->t()I

    move-result p1

    iput p1, p0, Lni/c;->f:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lni/c;->f:I

    return v0
.end method

.method public d()C
    .locals 1

    iget-char v0, p0, Lni/c;->e:C

    return v0
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lni/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lni/c;->f:I

    return-void
.end method

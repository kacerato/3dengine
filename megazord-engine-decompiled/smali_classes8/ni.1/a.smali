.class public Lni/a;
.super Lni/b;
.source "SourceFile"


# instance fields
.field public final e:C


# direct methods
.method public constructor <init>(Lni/b;Lpi/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lni/b;-><init>(Lni/b;)V

    invoke-virtual {p2}, Lpi/d;->s()C

    move-result p1

    iput-char p1, p0, Lni/a;->e:C

    return-void
.end method


# virtual methods
.method public c()C
    .locals 1

    iget-char v0, p0, Lni/a;->e:C

    return v0
.end method

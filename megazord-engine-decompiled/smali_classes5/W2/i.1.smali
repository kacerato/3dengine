.class public final LW2/i;
.super LW2/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LW2/k;
.end annotation

.annotation runtime Ld3/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW2/i$b;
    }
.end annotation


# static fields
.field public static final e:J


# instance fields
.field public final b:LW2/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW2/v<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LW2/v;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW2/v<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LW2/c;-><init>()V

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW2/v;

    iput-object p1, p0, LW2/i;->b:LW2/v;

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    const/16 p1, 0x40

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "bits (%s) must be either 32 or 64"

    invoke-static {p1, v0, p2}, LR2/H;->k(ZLjava/lang/String;I)V

    iput p2, p0, LW2/i;->c:I

    invoke-static {p3}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LW2/i;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(LW2/i;)I
    .locals 0

    iget p0, p0, LW2/i;->c:I

    return p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, LW2/i;->c:I

    return v0
.end method

.method public g()LW2/r;
    .locals 3

    new-instance v0, LW2/i$b;

    iget-object v1, p0, LW2/i;->b:LW2/v;

    invoke-interface {v1}, LR2/Q;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Checksum;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LW2/i$b;-><init>(LW2/i;Ljava/util/zip/Checksum;LW2/i$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW2/i;->d:Ljava/lang/String;

    return-object v0
.end method

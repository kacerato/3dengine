.class public Lqe/M0;
.super Lqe/F0;
.source "SourceFile"

# interfaces
.implements LCe/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:J = -0x7fe26d2e70647fabL


# direct methods
.method public constructor <init>(LCe/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/F0;-><init>(Lke/i;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.class public Lle/z;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lte/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lte/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, Lle/z;->b:Lte/c;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Double;)V
    .locals 3

    iget-object v0, p0, Lle/z;->b:Lte/c;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lte/c;->Cc(ID)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lle/z;->a(ILjava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lle/z;->j(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lle/z;->b:Lte/c;

    invoke-interface {v0, p1}, Lte/c;->get(I)D

    move-result-wide v0

    iget-object p1, p0, Lle/z;->b:Lte/c;

    invoke-interface {p1}, Lte/c;->i()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public k()Lte/c;
    .locals 1

    iget-object v0, p0, Lle/z;->b:Lte/c;

    return-object v0
.end method

.method public l(I)Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lle/z;->b:Lte/c;

    invoke-interface {v0, p1}, Lte/c;->t0(I)D

    move-result-wide v0

    iget-object p1, p0, Lle/z;->b:Lte/c;

    invoke-interface {p1}, Lte/c;->i()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 3

    iget-object v0, p0, Lle/z;->b:Lte/c;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lte/c;->Y6(ID)D

    move-result-wide p1

    iget-object v0, p0, Lle/z;->b:Lte/c;

    invoke-interface {v0}, Lte/c;->i()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lte/c;

    iput-object p1, p0, Lle/z;->b:Lte/c;

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lle/z;->l(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lle/z;->m(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lle/z;->b:Lte/c;

    invoke-interface {v0}, Lte/c;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Lle/z;->b:Lte/c;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

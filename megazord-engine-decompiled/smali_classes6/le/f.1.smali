.class public Lle/f;
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
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lte/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lte/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, Lle/f;->b:Lte/a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Byte;)V
    .locals 1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-interface {v0, p1, p2}, Lte/a;->Gc(IB)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, Lle/f;->a(ILjava/lang/Byte;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lle/f;->j(I)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->get(I)B

    move-result p1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-interface {v0}, Lte/a;->i()B

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public k()Lte/a;
    .locals 1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    return-object v0
.end method

.method public l(I)Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->t0(I)B

    move-result p1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-interface {v0}, Lte/a;->i()B

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/Byte;)Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-interface {v0, p1, p2}, Lte/a;->set(IB)B

    move-result p1

    iget-object p2, p0, Lle/f;->b:Lte/a;

    invoke-interface {p2}, Lte/a;->i()B

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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

    check-cast p1, Lte/a;

    iput-object p1, p0, Lle/f;->b:Lte/a;

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lle/f;->l(I)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, Lle/f;->m(ILjava/lang/Byte;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-interface {v0}, Lte/a;->size()I

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

    iget-object v0, p0, Lle/f;->b:Lte/a;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

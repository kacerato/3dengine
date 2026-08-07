.class public abstract Loe/q;
.super Loe/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Loe/b0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:J = 0x79a742617053bb70L


# instance fields
.field public q:LGe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LGe/a<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/b0;-><init>()V

    return-void
.end method

.method public constructor <init>(LGe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Loe/b0;-><init>()V

    .line 3
    iput-object p1, p0, Loe/q;->q:LGe/a;

    return-void
.end method

.method public constructor <init>(LGe/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Loe/b0;-><init>(I)V

    .line 5
    iput-object p1, p0, Loe/q;->q:LGe/a;

    return-void
.end method

.method public constructor <init>(LGe/a;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TT;>;IF)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p2, p3}, Loe/b0;-><init>(IF)V

    .line 7
    iput-object p1, p0, Loe/q;->q:LGe/a;

    return-void
.end method


# virtual methods
.method public Fe(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Loe/q;->q:LGe/a;

    invoke-interface {v0, p1}, LGe/a;->N3(Ljava/lang/Object;)I

    move-result p1

    return p1
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

    invoke-super {p0, p1}, Loe/b0;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LGe/a;

    iput-object p1, p0, Loe/q;->q:LGe/a;

    return-void
.end method

.method public vd(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Loe/b0;->o:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Loe/q;->q:LGe/a;

    invoke-interface {v0, p1, p2}, LGe/a;->vd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    invoke-super {p0, p1}, Loe/b0;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-object v0, p0, Loe/q;->q:LGe/a;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

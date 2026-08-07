.class public final Lcom/bumptech/glide/load/engine/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/e;


# static fields
.field public static final k:LX/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX/h<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final c:LE/b;

.field public final d:LB/e;

.field public final e:LB/e;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final i:LB/h;

.field public final j:LB/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LX/h;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, LX/h;-><init>(J)V

    sput-object v0, Lcom/bumptech/glide/load/engine/v;->k:LX/h;

    return-void
.end method

.method public constructor <init>(LE/b;LB/e;LB/e;IILB/l;Ljava/lang/Class;LB/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE/b;",
            "LB/e;",
            "LB/e;",
            "II",
            "LB/l<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "LB/h;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/v;->c:LE/b;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/v;->d:LB/e;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/v;->e:LB/e;

    iput p4, p0, Lcom/bumptech/glide/load/engine/v;->f:I

    iput p5, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/v;->j:LB/l;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    iput-object p8, p0, Lcom/bumptech/glide/load/engine/v;->i:LB/h;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/v;->k:LX/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LX/h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LB/e;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, LX/h;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/engine/v;

    iget v0, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/v;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/v;->f:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/v;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->j:LB/l;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/v;->j:LB/l;

    invoke-static {v0, v2}, LX/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->d:LB/e;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/v;->d:LB/e;

    invoke-interface {v0, v2}, LB/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->e:LB/e;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/v;->e:LB/e;

    invoke-interface {v0, v2}, LB/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->i:LB/h;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/v;->i:LB/h;

    invoke-virtual {v0, p1}, LB/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->d:LB/e;

    invoke-interface {v0}, LB/e;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->e:LB/e;

    invoke-interface {v1}, LB/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/v;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->j:LB/l;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->i:LB/h;

    invoke-virtual {v1}, LB/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->d:LB/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->e:LB/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/v;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->h:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->j:LB/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->i:LB/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/v;->c:LE/b;

    const/16 v1, 0x8

    const-class v2, [B

    invoke-interface {v0, v1, v2}, LE/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/v;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/v;->g:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->e:LB/e;

    invoke-interface {v1, p1}, LB/e;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->d:LB/e;

    invoke-interface {v1, p1}, LB/e;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->j:LB/l;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, LB/e;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/v;->i:LB/h;

    invoke-virtual {v1, p1}, LB/h;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/v;->a()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/v;->c:LE/b;

    invoke-interface {p1, v0}, LE/b;->put(Ljava/lang/Object;)V

    return-void
.end method

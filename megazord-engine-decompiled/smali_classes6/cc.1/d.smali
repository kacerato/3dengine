.class public final synthetic Lcc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcc/e;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Ljava/nio/ByteBuffer;

.field public final synthetic h:Ljava/nio/ShortBuffer;

.field public final synthetic i:Ljava/nio/ByteBuffer;

.field public final synthetic j:Ljava/nio/FloatBuffer;

.field public final synthetic k:Z

.field public final synthetic l:I

.field public final synthetic m:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcc/e;IIIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;ZILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/d;->b:Lcc/e;

    iput p2, p0, Lcc/d;->c:I

    iput p3, p0, Lcc/d;->d:I

    iput p4, p0, Lcc/d;->e:I

    iput-boolean p5, p0, Lcc/d;->f:Z

    iput-object p6, p0, Lcc/d;->g:Ljava/nio/ByteBuffer;

    iput-object p7, p0, Lcc/d;->h:Ljava/nio/ShortBuffer;

    iput-object p8, p0, Lcc/d;->i:Ljava/nio/ByteBuffer;

    iput-object p9, p0, Lcc/d;->j:Ljava/nio/FloatBuffer;

    iput-boolean p10, p0, Lcc/d;->k:Z

    iput p11, p0, Lcc/d;->l:I

    iput-object p12, p0, Lcc/d;->m:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcc/d;->b:Lcc/e;

    iget v1, p0, Lcc/d;->c:I

    iget v2, p0, Lcc/d;->d:I

    iget v3, p0, Lcc/d;->e:I

    iget-boolean v4, p0, Lcc/d;->f:Z

    iget-object v5, p0, Lcc/d;->g:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcc/d;->h:Ljava/nio/ShortBuffer;

    iget-object v7, p0, Lcc/d;->i:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcc/d;->j:Ljava/nio/FloatBuffer;

    iget-boolean v9, p0, Lcc/d;->k:Z

    iget v10, p0, Lcc/d;->l:I

    iget-object v11, p0, Lcc/d;->m:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v11}, Lcc/e;->a(Lcc/e;IIIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;ZILjava/nio/ByteBuffer;)V

    return-void
.end method

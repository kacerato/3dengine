.class public final synthetic Lcc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcc/g;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Ljava/nio/ByteBuffer;

.field public final synthetic g:Ljava/nio/ShortBuffer;

.field public final synthetic h:Ljava/nio/ByteBuffer;

.field public final synthetic i:Z

.field public final synthetic j:I

.field public final synthetic k:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcc/g;IIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;ZILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/f;->b:Lcc/g;

    iput p2, p0, Lcc/f;->c:I

    iput p3, p0, Lcc/f;->d:I

    iput-boolean p4, p0, Lcc/f;->e:Z

    iput-object p5, p0, Lcc/f;->f:Ljava/nio/ByteBuffer;

    iput-object p6, p0, Lcc/f;->g:Ljava/nio/ShortBuffer;

    iput-object p7, p0, Lcc/f;->h:Ljava/nio/ByteBuffer;

    iput-boolean p8, p0, Lcc/f;->i:Z

    iput p9, p0, Lcc/f;->j:I

    iput-object p10, p0, Lcc/f;->k:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcc/f;->b:Lcc/g;

    iget v1, p0, Lcc/f;->c:I

    iget v2, p0, Lcc/f;->d:I

    iget-boolean v3, p0, Lcc/f;->e:Z

    iget-object v4, p0, Lcc/f;->f:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcc/f;->g:Ljava/nio/ShortBuffer;

    iget-object v6, p0, Lcc/f;->h:Ljava/nio/ByteBuffer;

    iget-boolean v7, p0, Lcc/f;->i:Z

    iget v8, p0, Lcc/f;->j:I

    iget-object v9, p0, Lcc/f;->k:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v9}, Lcc/g;->a(Lcc/g;IIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;ZILjava/nio/ByteBuffer;)V

    return-void
.end method

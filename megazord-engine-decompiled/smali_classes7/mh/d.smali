.class public final synthetic Lmh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

.field public final synthetic f:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

.field public final synthetic j:LTb/d;

.field public final synthetic k:Lorg/ITsMagic/Atlas/a$c;

.field public final synthetic l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LTb/d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh/d;->b:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;

    iput p2, p0, Lmh/d;->c:I

    iput p3, p0, Lmh/d;->d:I

    iput-object p4, p0, Lmh/d;->e:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

    iput-object p5, p0, Lmh/d;->f:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;

    iput p6, p0, Lmh/d;->g:F

    iput p7, p0, Lmh/d;->h:F

    iput-object p8, p0, Lmh/d;->i:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    iput-object p9, p0, Lmh/d;->j:LTb/d;

    iput-object p10, p0, Lmh/d;->k:Lorg/ITsMagic/Atlas/a$c;

    iput-object p11, p0, Lmh/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p12, p0, Lmh/d;->m:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lmh/d;->b:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;

    iget v1, p0, Lmh/d;->c:I

    iget v2, p0, Lmh/d;->d:I

    iget-object v3, p0, Lmh/d;->e:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

    iget-object v4, p0, Lmh/d;->f:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;

    iget v5, p0, Lmh/d;->g:F

    iget v6, p0, Lmh/d;->h:F

    iget-object v7, p0, Lmh/d;->i:Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    iget-object v8, p0, Lmh/d;->j:LTb/d;

    iget-object v9, p0, Lmh/d;->k:Lorg/ITsMagic/Atlas/a$c;

    iget-object v10, p0, Lmh/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v11, p0, Lmh/d;->m:I

    invoke-static/range {v0 .. v11}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->a(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LTb/d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

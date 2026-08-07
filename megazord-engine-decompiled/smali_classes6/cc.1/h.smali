.class public final synthetic Lcc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/nio/ByteBuffer;

.field public final synthetic d:I

.field public final synthetic e:Ljava/nio/ByteBuffer;

.field public final synthetic f:Lcc/i$a;

.field public final synthetic g:Lcom/google/android/filament/Box;


# direct methods
.method public synthetic constructor <init>(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Lcc/i$a;Lcom/google/android/filament/Box;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcc/h;->b:I

    iput-object p2, p0, Lcc/h;->c:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcc/h;->d:I

    iput-object p4, p0, Lcc/h;->e:Ljava/nio/ByteBuffer;

    iput-object p5, p0, Lcc/h;->f:Lcc/i$a;

    iput-object p6, p0, Lcc/h;->g:Lcom/google/android/filament/Box;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcc/h;->b:I

    iget-object v1, p0, Lcc/h;->c:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcc/h;->d:I

    iget-object v3, p0, Lcc/h;->e:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcc/h;->f:Lcc/i$a;

    iget-object v5, p0, Lcc/h;->g:Lcom/google/android/filament/Box;

    invoke-static/range {v0 .. v5}, Lcc/i;->a(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Lcc/i$a;Lcom/google/android/filament/Box;)V

    return-void
.end method

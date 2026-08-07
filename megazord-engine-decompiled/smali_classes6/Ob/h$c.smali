.class public LOb/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOb/h;->e(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:LOb/h;


# direct methods
.method public constructor <init>(LOb/h;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$f",
            "val$wantedResolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOb/h$c;->d:LOb/h;

    iput p2, p0, LOb/h$c;->b:I

    iput p3, p0, LOb/h$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v9, Lcom/google/android/filament/Texture$g;

    iget-object v1, p0, LOb/h$c;->d:LOb/h;

    invoke-static {v1}, LOb/h;->d(LOb/h;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, LOb/h$c;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v3, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    invoke-direct {v9, v1, v2, v3}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    iget-object v1, p0, LOb/h$c;->d:LOb/h;

    invoke-virtual {v1}, LOb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    iget v5, p0, LOb/h$c;->b:I

    iget v7, p0, LOb/h$c;->c:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v7

    invoke-virtual/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D(IIIIIIILcom/google/android/filament/Texture$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LOb/h$c;->d:LOb/h;

    invoke-static {v1}, LOb/h;->d(LOb/h;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, LOb/h$c;->b:I

    aput-object v0, v1, v2

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LOb/h$c;->d:LOb/h;

    invoke-static {v2}, LOb/h;->d(LOb/h;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, LOb/h$c;->b:I

    aput-object v0, v2, v3

    throw v1
.end method

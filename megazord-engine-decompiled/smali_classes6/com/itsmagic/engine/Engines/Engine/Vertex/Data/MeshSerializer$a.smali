.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->s(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[[B


# direct methods
.method public constructor <init>([[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$bin2Bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;->a:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posUv",
            "quatS4",
            "indexData",
            "skinBuf"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;->a:[[B

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->a(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    aput-object p1, v0, v1

    return-void
.end method

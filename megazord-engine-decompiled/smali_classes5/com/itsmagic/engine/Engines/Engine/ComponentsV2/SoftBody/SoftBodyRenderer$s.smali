.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:I

.field public final c:Ljava/nio/ByteBuffer;

.field public final d:Ljava/nio/ShortBuffer;

.field public final e:Ljava/nio/FloatBuffer;

.field public final f:Lcom/google/android/filament/Box;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ILjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/FloatBuffer;Lcom/google/android/filament/Box;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "version",
            "posUv",
            "tangents",
            "bounds",
            "box"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->b:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->c:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->d:Ljava/nio/ShortBuffer;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->e:Ljava/nio/FloatBuffer;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->f:Lcom/google/android/filament/Box;

    return-void
.end method

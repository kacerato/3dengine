.class public Lh7/b$t;
.super LZ5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Lh7/b$z;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZ5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh7/b$z;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;


# direct methods
.method public constructor <init>(Lh7/b$z;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$data"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$t;->a:Lh7/b$z;

    iput-object p2, p0, Lh7/b$t;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-direct {p0}, LZ5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh7/b$t;->a:Lh7/b$z;

    invoke-interface {v0}, Lh7/b$z;->a()V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lh7/b$t;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->setNoiseType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V

    iget-object p1, p0, Lh7/b$t;->a:Lh7/b$z;

    invoke-interface {p1}, Lh7/b$z;->b()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    invoke-virtual {p0, p1}, Lh7/b$t;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V

    return-void
.end method

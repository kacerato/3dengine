.class public Laa/a;
.super Lva/b;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lva/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;
    .locals 1

    iget-object v0, p0, Laa/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    return-object v0
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windEffect"
        }
    .end annotation

    iput-object p1, p0, Laa/a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    return-void
.end method

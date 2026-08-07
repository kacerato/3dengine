.class public Lh7/c$r;
.super LZ5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/c;->J1()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZ5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh7/c;


# direct methods
.method public constructor <init>(Lh7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/c$r;->a:Lh7/c;

    invoke-direct {p0}, LZ5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, LZ5/c$n0;->a()V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lh7/c$r;->a:Lh7/c;

    invoke-static {v0}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iget-object p1, p0, Lh7/c$r;->a:Lh7/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lh7/c;->v1(Lh7/c;Landroid/view/View;)V

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {p0, p1}, Lh7/c$r;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V

    return-void
.end method

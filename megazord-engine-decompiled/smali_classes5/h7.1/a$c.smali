.class public Lh7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/a;->I1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh7/a;


# direct methods
.method public constructor <init>(Lh7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/a$c;->b:Lh7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lh7/a$c;->b:Lh7/a;

    invoke-static {v0}, Lh7/a;->q1(Lh7/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh7/a$c;->b:Lh7/a;

    invoke-static {v1}, Lh7/a;->p1(Lh7/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, LMb/g;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    iget-object v1, p0, Lh7/a$c;->b:Lh7/a;

    invoke-static {v1}, Lh7/a;->p1(Lh7/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, LMb/g;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    iget-object v1, p0, Lh7/a$c;->b:Lh7/a;

    invoke-static {v1}, Lh7/a;->p1(Lh7/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, LMb/g;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    iget-object v1, p0, Lh7/a$c;->b:Lh7/a;

    invoke-static {v1}, Lh7/a;->p1(Lh7/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v0}, LMb/g;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    new-instance v0, Lh7/a$c$a;

    invoke-direct {v0, p0}, Lh7/a$c$a;-><init>(Lh7/a$c;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

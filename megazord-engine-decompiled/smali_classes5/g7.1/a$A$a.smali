.class public Lg7/a$A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a$A;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LMb/g;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public final synthetic d:Lg7/a$A;


# direct methods
.method public constructor <init>(Lg7/a$A;LMb/g;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$texture",
            "val$config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$A$a;->d:Lg7/a$A;

    iput-object p2, p0, Lg7/a$A$a;->b:LMb/g;

    iput-object p3, p0, Lg7/a$A$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lg7/a$A$a;->d:Lg7/a$A;

    iget-object v0, v0, Lg7/a$A;->b:Lg7/a;

    iget-object v1, p0, Lg7/a$A$a;->b:LMb/g;

    invoke-static {v0, v1}, Lg7/a;->c2(Lg7/a;LMb/g;)LMb/g;

    iget-object v0, p0, Lg7/a$A$a;->d:Lg7/a$A;

    iget-object v0, v0, Lg7/a$A;->b:Lg7/a;

    iget-object v1, p0, Lg7/a$A$a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v0, v1}, Lg7/a;->r1(Lg7/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v0, p0, Lg7/a$A$a;->d:Lg7/a$A;

    iget-object v0, v0, Lg7/a$A;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->s1(Lg7/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    iget-object v0, p0, Lg7/a$A$a;->d:Lg7/a$A;

    iget-object v0, v0, Lg7/a$A;->b:Lg7/a;

    invoke-static {v0}, Lg7/a;->t1(Lg7/a;)V

    return-void
.end method

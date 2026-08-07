.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->c2(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic c:LW5/b;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LW5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$var",
            "val$reset",
            "val$rectPosVector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;->c:LW5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

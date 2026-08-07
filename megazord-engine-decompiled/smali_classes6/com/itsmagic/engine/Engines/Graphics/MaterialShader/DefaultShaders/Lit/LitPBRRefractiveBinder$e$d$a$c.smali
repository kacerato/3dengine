.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;->b:Landroid/view/View;

    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c;)V

    invoke-static {p1, v0, v1}, Lg4/g;->G1(Landroid/view/View;LL4/a$e;Lg4/e;)V

    return-void
.end method

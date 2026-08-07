.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$view"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;)V

    const-string v0, "Clear"

    invoke-direct {p1, v0, p2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$b;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;)V

    const-string v0, "Detach"

    invoke-direct {p1, v0, p2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$d$a;)V

    const-string v0, "From presets"

    invoke-direct {p1, v0, p2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

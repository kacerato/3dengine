.class public Lf7/p$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/p;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

.field public final synthetic b:Lf7/p;


# direct methods
.method public constructor <init>(Lf7/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf7/p$e;->b:Lf7/p;

    iput-object p2, p0, Lf7/p$e;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    new-instance v1, Lf7/p$e$a;

    invoke-direct {v1, p0}, Lf7/p$e$a;-><init>(Lf7/p$e;)V

    invoke-static {p1, v0, v1}, Lg4/g;->H1(Landroid/view/View;LL4/a$e;Lg4/e;)V

    return-void
.end method

.class public Lf7/H$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/H;->u()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;

.field public final synthetic b:Lf7/H;


# direct methods
.method public constructor <init>(Lf7/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$nodeInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf7/H$f;->b:Lf7/H;

    iput-object p2, p0, Lf7/H$f;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lf7/H$f;->b:Lf7/H;

    iget-object v0, p0, Lf7/H$f;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;

    invoke-static {p1, v0}, Lf7/H;->o(Lf7/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

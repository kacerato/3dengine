.class public final synthetic Lf7/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lf7/p;

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;


# direct methods
.method public synthetic constructor <init>(Lf7/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/o;->b:Lf7/p;

    iput p2, p0, Lf7/o;->c:I

    iput-object p3, p0, Lf7/o;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lf7/o;->b:Lf7/p;

    iget v1, p0, Lf7/o;->c:I

    iget-object v2, p0, Lf7/o;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {v0, v1, v2, p1}, Lf7/p;->c(Lf7/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Landroid/view/View;)V

    return-void
.end method

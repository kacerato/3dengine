.class public LN5/j$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN5/j;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LN5/j;


# direct methods
.method public constructor <init>(LN5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LN5/j$f;->b:LN5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LN5/j$f;->b:LN5/j;

    invoke-static {v0}, LN5/j;->u1(LN5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v0

    iget-object v1, p0, LN5/j$f;->b:LN5/j;

    invoke-static {v1}, LN5/j;->y1(LN5/j;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->H(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, LN5/j$f;->b:LN5/j;

    new-instance v1, LN5/j$f$a;

    invoke-direct {v1, p0}, LN5/j$f$a;-><init>(LN5/j$f;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T0(Ljava/lang/Runnable;)V

    return-void
.end method

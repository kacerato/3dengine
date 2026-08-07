.class public Lf7/p$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/p;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lf7/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lf7/H;

.field public final synthetic c:Lf7/p;


# direct methods
.method public constructor <init>(Lf7/p;Lf7/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$graphView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf7/p$k;->c:Lf7/p;

    iput-object p2, p0, Lf7/p$k;->b:Lf7/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lf7/p$k;->c:Lf7/p;

    invoke-static {v0}, Lf7/p;->i(Lf7/p;)V

    iget-object v0, p0, Lf7/p$k;->b:Lf7/H;

    invoke-virtual {v0}, Lf7/H;->b0()V

    return-void
.end method

.class public LN5/j$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN5/j;->B1(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

.field public final synthetic c:LN5/j;


# direct methods
.method public constructor <init>(LN5/j;Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    iput-object p1, p0, LN5/j$e;->c:LN5/j;

    iput-object p2, p0, LN5/j$e;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LN5/j$e;->c:LN5/j;

    invoke-static {p1}, LN5/j;->u1(LN5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    iget-object v0, p0, LN5/j$e;->b:Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->D(Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;)V

    iget-object p1, p0, LN5/j$e;->c:LN5/j;

    invoke-static {p1}, LN5/j;->u1(LN5/j;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->B()V

    iget-object p1, p0, LN5/j$e;->c:LN5/j;

    invoke-static {p1}, LN5/j;->s1(LN5/j;)V

    iget-object p1, p0, LN5/j$e;->c:LN5/j;

    invoke-static {p1}, LN5/j;->v1(LN5/j;)V

    return-void
.end method

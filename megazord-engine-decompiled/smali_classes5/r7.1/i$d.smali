.class public Lr7/i$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/i;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr7/i;


# direct methods
.method public constructor <init>(Lr7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lr7/i$d;->b:Lr7/i;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lr7/i$d;->b:Lr7/i;

    invoke-static {p1}, Lr7/i;->s1(Lr7/i;)Lr7/i$h;

    move-result-object p1

    iget-object v0, p0, Lr7/i$d;->b:Lr7/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr7/i;->r1(Lr7/i;Z)Lr7/i$f;

    move-result-object v0

    invoke-interface {p1, v0}, Lr7/i$h;->a(Lr7/i$f;)V

    return-void
.end method

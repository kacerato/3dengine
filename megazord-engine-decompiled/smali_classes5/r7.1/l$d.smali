.class public Lr7/l$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/l;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr7/l;


# direct methods
.method public constructor <init>(Lr7/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lr7/l$d;->b:Lr7/l;

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
            "v"
        }
    .end annotation

    iget-object p1, p0, Lr7/l$d;->b:Lr7/l;

    invoke-static {p1}, Lr7/l;->r1(Lr7/l;)Lr7/l$i;

    move-result-object p1

    iget-object v0, p0, Lr7/l$d;->b:Lr7/l;

    invoke-static {v0}, Lr7/l;->q1(Lr7/l;)Lr7/l$g;

    move-result-object v0

    invoke-interface {p1, v0}, Lr7/l$i;->a(Lr7/l$g;)V

    return-void
.end method

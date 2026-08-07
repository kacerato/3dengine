.class public Lr7/b$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/b;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr7/b;


# direct methods
.method public constructor <init>(Lr7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lr7/b$d;->b:Lr7/b;

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

    iget-object p1, p0, Lr7/b$d;->b:Lr7/b;

    invoke-static {p1}, Lr7/b;->r1(Lr7/b;)Lr7/b$i;

    move-result-object p1

    iget-object v0, p0, Lr7/b$d;->b:Lr7/b;

    invoke-static {v0}, Lr7/b;->q1(Lr7/b;)Lr7/b$g;

    move-result-object v0

    invoke-interface {p1, v0}, Lr7/b$i;->a(Lr7/b$g;)V

    return-void
.end method

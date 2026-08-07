.class public Lyb/e$a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$a$b;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyb/e$a$a$b;


# direct methods
.method public constructor <init>(Lyb/e$a$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$a$b$a;->a:Lyb/e$a$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr7/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, Lr7/c$g;->dismiss()V

    return-void
.end method

.method public b(Lr7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    new-instance v0, Lyb/e$a$a$b$a$a;

    invoke-direct {v0, p0}, Lyb/e$a$a$b$a$a;-><init>(Lyb/e$a$a$b$a;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Lr7/c$g;->dismiss()V

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, LH4/a;

    invoke-direct {v0}, LH4/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    return-void
.end method

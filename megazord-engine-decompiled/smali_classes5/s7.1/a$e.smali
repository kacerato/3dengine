.class public Ls7/a$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls7/a;


# direct methods
.method public constructor <init>(Ls7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$e;->b:Ls7/a;

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

    iget-object p1, p0, Ls7/a$e;->b:Ls7/a;

    invoke-static {p1}, Ls7/a;->s1(Ls7/a;)Ls7/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls7/a$e;->b:Ls7/a;

    invoke-static {p1}, Ls7/a;->s1(Ls7/a;)Ls7/b;

    move-result-object p1

    iget-object p1, p1, Ls7/b;->c:LB4/d;

    new-instance v0, Ls7/a$e$a;

    invoke-direct {v0, p0}, Ls7/a$e$a;-><init>(Ls7/a$e;)V

    invoke-interface {p1, v0}, LB4/d;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

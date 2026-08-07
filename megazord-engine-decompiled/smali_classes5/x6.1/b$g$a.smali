.class public Lx6/b$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/b$g;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx6/b$g;


# direct methods
.method public constructor <init>(Lx6/b$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lx6/b$g$a;->a:Lx6/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lx6/b$g$a;->a:Lx6/b$g;

    iget-object v0, v0, Lx6/b$g;->b:Lx6/b;

    invoke-static {v0, p1}, Lx6/b;->o1(Lx6/b;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

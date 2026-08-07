.class public Ln7/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/a;


# direct methods
.method public constructor <init>(Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ln7/a$e;->a:Ln7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object p1, p0, Ln7/a$e;->a:Ln7/a;

    invoke-static {p1}, Ln7/a;->s1(Ln7/a;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lp6/a;->o1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public c(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "email",
            "confirmed",
            "confirmedAt",
            "etd"
        }
    .end annotation

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Ln7/a$e;->a:Ln7/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ln7/a;->p1(Ln7/a;I)I

    :cond_0
    iget-object p1, p0, Ln7/a$e;->a:Ln7/a;

    invoke-static {p1}, Ln7/a;->s1(Ln7/a;)V

    return-void
.end method

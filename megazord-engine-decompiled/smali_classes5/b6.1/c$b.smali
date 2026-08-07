.class public Lb6/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL4/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/c;->D1(Landroid/view/View;Ljava/lang/String;Lb6/c$l;)Lb6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanel"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(Z)V

    return-void
.end method

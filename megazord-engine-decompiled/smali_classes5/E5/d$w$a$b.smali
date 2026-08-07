.class public LE5/d$w$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/c$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/d$w$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LE5/d$w$a;


# direct methods
.method public constructor <init>(LE5/d$w$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LE5/d$w$a$b;->a:LE5/d$w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr7/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popup",
            "panel"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->C1(Z)V

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D1(Z)V

    return-void
.end method

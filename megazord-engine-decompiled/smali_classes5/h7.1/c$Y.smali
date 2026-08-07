.class public Lh7/c$Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/c;->d2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/c;


# direct methods
.method public constructor <init>(Lh7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh7/c$Y;->a:Lh7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lh7/c$Y;->a:Lh7/c;

    invoke-static {v0}, Lh7/c;->o1(Lh7/c;)V

    iget-object v0, p0, Lh7/c$Y;->a:Lh7/c;

    invoke-static {v0}, Lh7/c;->p1(Lh7/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg7/a;->O2(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, Lh7/c$Y;->a:Lh7/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method

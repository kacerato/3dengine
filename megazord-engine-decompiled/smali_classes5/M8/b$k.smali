.class public LM8/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM8/b;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM8/b;


# direct methods
.method public constructor <init>(LM8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM8/b$k;->a:LM8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr7/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popup",
            "area"
        }
    .end annotation

    iget-object p2, p0, LM8/b$k;->a:LM8/b;

    invoke-static {p2, p1}, LM8/b;->b(LM8/b;Lr7/g;)Lr7/g;

    iget-object p1, p0, LM8/b$k;->a:LM8/b;

    invoke-static {p1}, LM8/b;->c(LM8/b;)V

    return-void
.end method

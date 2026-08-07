.class public LO6/b$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO6/b;


# direct methods
.method public constructor <init>(LO6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO6/b$b;->b:LO6/b;

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

    iget-object p1, p0, LO6/b$b;->b:LO6/b;

    invoke-static {p1}, LO6/b;->s1(LO6/b;)LP6/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LO6/b$b;->b:LO6/b;

    invoke-static {p1}, LO6/b;->s1(LO6/b;)LP6/c;

    move-result-object v0

    iget-object v0, v0, LP6/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, LO6/b;->D1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

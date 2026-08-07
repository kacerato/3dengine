.class public LE5/d$w$a$a;
.super Lr7/c$h;
.source "SourceFile"


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

    iput-object p1, p0, LE5/d$w$a$a;->a:LE5/d$w$a;

    invoke-direct {p0}, Lr7/c$h;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-super {p0, p1}, Lr7/c$h;->b(Lr7/c$g;)V

    iget-object p1, p0, LE5/d$w$a$a;->a:LE5/d$w$a;

    iget-object p1, p1, LE5/d$w$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    sget-object p1, Lo8/b;->h:Lt8/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lt8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

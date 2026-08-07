.class public LO6/b$c;
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

    iput-object p1, p0, LO6/b$c;->b:LO6/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LO6/b$c;->b:LO6/b;

    invoke-static {v0}, LO6/b;->s1(LO6/b;)LP6/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, LP6/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LO6/b$c$a;

    invoke-direct {v1, p0, v0}, LO6/b$c$a;-><init>(LO6/b$c;Ljava/lang/String;)V

    sget-object v0, LL4/a$e;->Below:LL4/a$e;

    invoke-static {p1, v0, v1}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

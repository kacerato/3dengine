.class public Lg4/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/g$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg4/g$b;


# direct methods
.method public constructor <init>(Lg4/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg4/g$b$a;->b:Lg4/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lg4/g$b$a;->b:Lg4/g$b;

    iget-object v0, v0, Lg4/g$b;->c:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    const/16 v0, 0x118

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, Lf8/c;->f(I)F

    move-result v1

    iget-object v2, p0, Lg4/g$b$a;->b:Lg4/g$b;

    iget-object v3, v2, Lg4/g$b;->d:Landroid/view/View;

    iget-object v4, v2, Lg4/g$b;->b:Lg4/g;

    iget-object v2, v2, Lg4/g$b;->e:LL4/a$e;

    invoke-static {v3, v4, v2, v0, v1}, LL4/a;->h(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)V

    return-void
.end method

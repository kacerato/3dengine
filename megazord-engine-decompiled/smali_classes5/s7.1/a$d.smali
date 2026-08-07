.class public Ls7/a$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls7/a;


# direct methods
.method public constructor <init>(Ls7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$d;->b:Ls7/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Ls7/a$d;->b:Ls7/a;

    invoke-static {v0}, Ls7/a;->s1(Ls7/a;)Ls7/b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, LL4/a$e;->Below:LL4/a$e;

    new-instance v1, Ls7/a$d$a;

    invoke-direct {v1, p0}, Ls7/a$d$a;-><init>(Ls7/a$d;)V

    const-string v2, "Delete"

    const-string v3, "Delete this commit?"

    invoke-static {p1, v0, v2, v3, v1}, Lr7/c;->u1(Landroid/view/View;LL4/a$e;Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    :cond_0
    return-void
.end method

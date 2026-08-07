.class public Le8/i$d;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/i;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le8/i;


# direct methods
.method public constructor <init>(Le8/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Le8/i$d;->b:Le8/i;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Le8/i$d;->b:Le8/i;

    iget-object v1, v0, Le8/i;->j:Le8/j;

    iget-object v2, v0, Le8/i;->i:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, Le8/j;->a(Landroid/view/View;Landroid/content/Context;Le8/i;)V

    return-void
.end method

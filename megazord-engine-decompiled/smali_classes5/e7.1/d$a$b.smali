.class public Le7/d$a$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le7/d$a;->c(Le7/c;Le7/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le7/b;

.field public final synthetic c:Le7/d$a;


# direct methods
.method public constructor <init>(Le7/d$a;Le7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, Le7/d$a$b;->c:Le7/d$a;

    iput-object p2, p0, Le7/d$a$b;->b:Le7/b;

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

    iget-object p1, p0, Le7/d$a$b;->b:Le7/b;

    iget-object p1, p1, Le7/b;->b:Ljava/lang/String;

    const-string v0, "Missing information, please ask on communities!!"

    invoke-static {p1, v0}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

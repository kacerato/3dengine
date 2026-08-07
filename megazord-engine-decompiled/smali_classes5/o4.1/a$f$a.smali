.class public Lo4/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo4/a$f;->a(Lr7/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr7/g;

.field public final synthetic c:Lo4/a$f;


# direct methods
.method public constructor <init>(Lo4/a$f;Lr7/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$popup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo4/a$f$a;->c:Lo4/a$f;

    iput-object p2, p0, Lo4/a$f$a;->b:Lr7/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo4/a$f$a;->c:Lo4/a$f;

    iget-object v0, v0, Lo4/a$f;->a:Lo4/a;

    invoke-static {v0}, Lo4/a;->G(Lo4/a;)Z

    move-result v0

    new-instance v1, Lo4/a$f$a$a;

    invoke-direct {v1, p0, v0}, Lo4/a$f$a$a;-><init>(Lo4/a$f$a;Z)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

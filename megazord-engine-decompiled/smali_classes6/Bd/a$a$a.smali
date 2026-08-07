.class public LBd/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBd/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LBd/a$a;


# direct methods
.method public constructor <init>(LBd/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LBd/a$a$a;->b:LBd/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    new-instance v1, LH4/b;

    invoke-direct {v1}, LH4/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    iget-object v0, p0, LBd/a$a$a;->b:LBd/a$a;

    iget-object v0, v0, LBd/a$a;->d:LBd/a$d;

    invoke-interface {v0}, LBd/a$d;->b()V

    return-void
.end method

.class public Lyb/e$a$l$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$l$a$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lyb/e$a$l$a$a;


# direct methods
.method public constructor <init>(Lyb/e$a$l$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$l$a$a$a;->b:Lyb/e$a$l$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    new-instance v1, LQ5/n;

    invoke-direct {v1}, LQ5/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    return-void
.end method

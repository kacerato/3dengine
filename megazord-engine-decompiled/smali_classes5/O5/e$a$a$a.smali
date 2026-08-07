.class public LO5/e$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e$a$a;->onSuccess(Ljava/util/List;LV3/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:LV3/a$c;

.field public final synthetic c:LO5/e$a$a;


# direct methods
.method public constructor <init>(LO5/e$a$a;Ljava/util/List;LV3/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$files",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO5/e$a$a$a;->c:LO5/e$a$a;

    iput-object p2, p0, LO5/e$a$a$a;->a:Ljava/util/List;

    iput-object p3, p0, LO5/e$a$a$a;->b:LV3/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LI7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popup"
        }
    .end annotation

    iget-object v0, p0, LO5/e$a$a$a;->c:LO5/e$a$a;

    iget-object v0, v0, LO5/e$a$a;->a:LO5/e$a;

    iget-object v0, v0, LO5/e$a;->b:LO5/e;

    iget-object v1, p0, LO5/e$a$a$a;->a:Ljava/util/List;

    new-instance v2, LO5/e$a$a$a$a;

    invoke-direct {v2, p0, p1}, LO5/e$a$a$a$a;-><init>(LO5/e$a$a$a;LI7/a;)V

    invoke-static {v0, v1, v2}, LO5/e;->I1(LO5/e;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

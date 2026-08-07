.class public LO5/e$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e$a$a$a;->a(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LO5/e$a$a$a;


# direct methods
.method public constructor <init>(LO5/e$a$a$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$popup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO5/e$a$a$a$a;->c:LO5/e$a$a$a;

    iput-object p2, p0, LO5/e$a$a$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LO5/e$a$a$a$a;->c:LO5/e$a$a$a;

    iget-object v1, v0, LO5/e$a$a$a;->c:LO5/e$a$a;

    iget-object v1, v1, LO5/e$a$a;->a:LO5/e$a;

    iget-object v1, v1, LO5/e$a;->b:LO5/e;

    iget-object v0, v0, LO5/e$a$a$a;->b:LV3/a$c;

    invoke-static {v1, v0}, LO5/e;->C1(LO5/e;LV3/a$c;)LV3/a$c;

    iget-object v0, p0, LO5/e$a$a$a$a;->c:LO5/e$a$a$a;

    iget-object v0, v0, LO5/e$a$a$a;->c:LO5/e$a$a;

    iget-object v0, v0, LO5/e$a$a;->a:LO5/e$a;

    iget-object v0, v0, LO5/e$a;->b:LO5/e;

    invoke-static {v0}, LO5/e;->H1(LO5/e;)V

    iget-object v0, p0, LO5/e$a$a$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method

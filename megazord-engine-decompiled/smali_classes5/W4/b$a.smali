.class public LW4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW4/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW4/b;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW4/b;


# direct methods
.method public constructor <init>(LW4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LW4/b$a;->a:LW4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LW4/b$a;->a:LW4/b;

    invoke-static {v0}, LW4/b;->o1(LW4/b;)LW4/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LW4/a;->o(I)V

    return-void
.end method

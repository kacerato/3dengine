.class public LO6/b$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO6/b$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$e$a;


# direct methods
.method public constructor <init>(LO6/b$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LO6/b$e$a$a;->a:LO6/b$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LO6/b$e$a$a;->a:LO6/b$e$a;

    iget-object p1, p1, LO6/b$e$a;->b:LO6/b$e;

    iget-object p1, p1, LO6/b$e;->b:LO6/b;

    invoke-static {p1}, LO6/b;->u1(LO6/b;)V

    return-void
.end method

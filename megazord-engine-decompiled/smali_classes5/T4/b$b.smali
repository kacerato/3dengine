.class public LT4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT4/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT4/b;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT4/b;


# direct methods
.method public constructor <init>(LT4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LT4/b$b;->a:LT4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LU4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LT4/b$b;->a:LT4/b;

    invoke-static {v0}, LT4/b;->o1(LT4/b;)LT4/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LT4/a;->o(LU4/c;)Z

    return-void
.end method

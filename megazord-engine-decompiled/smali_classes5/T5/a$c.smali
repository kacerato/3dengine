.class public LT5/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT5/a;


# direct methods
.method public constructor <init>(LT5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LT5/a$c;->a:LT5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, LT5/a$c$b;

    invoke-direct {v0, p0}, LT5/a$c$b;-><init>(LT5/a$c;)V

    invoke-static {v0}, Lf8/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, LT5/a$c$a;

    invoke-direct {v0, p0}, LT5/a$c$a;-><init>(LT5/a$c;)V

    invoke-static {v0}, Lf8/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

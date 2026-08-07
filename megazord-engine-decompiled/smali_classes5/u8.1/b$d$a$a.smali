.class public Lu8/b$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b$d$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu8/b$d$a;


# direct methods
.method public constructor <init>(Lu8/b$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$d$a$a;->b:Lu8/b$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lo8/b;->h:Lt8/f;

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lu8/b$d$a$a$a;

    invoke-direct {v2, p0}, Lu8/b$d$a$a$a;-><init>(Lu8/b$d$a$a;)V

    invoke-virtual {v0, v1, v2}, Lt8/f;->f(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method

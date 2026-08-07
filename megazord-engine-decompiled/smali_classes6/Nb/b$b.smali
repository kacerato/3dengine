.class public LNb/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGb/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNb/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LNb/b;


# direct methods
.method public constructor <init>(LNb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LNb/b$b;->a:LNb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 1

    iget-object v0, p0, LNb/b$b;->a:LNb/b;

    invoke-static {v0}, LNb/b;->i(LNb/b;)Z

    move-result v0

    return v0
.end method

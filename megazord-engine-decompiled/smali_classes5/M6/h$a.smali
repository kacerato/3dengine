.class public LM6/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM6/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM6/h;->g(Ljava/lang/String;)LM6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM6/h;


# direct methods
.method public constructor <init>(LM6/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM6/h$a;->a:LM6/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, LM6/h$a;->a:LM6/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LM6/h;->a(LM6/h;LM6/e;)LM6/e;

    return-void
.end method

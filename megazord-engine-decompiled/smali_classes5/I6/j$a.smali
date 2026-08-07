.class public LI6/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI6/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI6/j;->g(Ljava/lang/String;)LI6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI6/j;


# direct methods
.method public constructor <init>(LI6/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LI6/j$a;->a:LI6/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, LI6/j$a;->a:LI6/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LI6/j;->a(LI6/j;LI6/g;)LI6/g;

    return-void
.end method

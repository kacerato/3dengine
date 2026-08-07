.class public Ls7/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a;->x1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls7/a;


# direct methods
.method public constructor <init>(Ls7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$f;->b:Ls7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, LB4/k;->z()LB4/k;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ls7/a$f;->b:Ls7/a;

    invoke-static {v2}, Ls7/a;->v1(Ls7/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ls7/a$f$a;

    invoke-direct {v2, p0}, Ls7/a$f$a;-><init>(Ls7/a$f;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, LB4/k;->F(Ljava/io/File;ZLB4/k$j;)V

    return-void
.end method

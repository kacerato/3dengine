.class public LI/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LB/e;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LB/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LC/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LC/d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LB/e;LC/d;)V
    .locals 1
    .param p1    # LB/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LC/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            "LC/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, LI/n$a;-><init>(LB/e;Ljava/util/List;LC/d;)V

    return-void
.end method

.method public constructor <init>(LB/e;Ljava/util/List;LC/d;)V
    .locals 0
    .param p1    # LB/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LC/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            "Ljava/util/List<",
            "LB/e;",
            ">;",
            "LC/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB/e;

    iput-object p1, p0, LI/n$a;->a:LB/e;

    .line 4
    invoke-static {p2}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, LI/n$a;->b:Ljava/util/List;

    .line 5
    invoke-static {p3}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC/d;

    iput-object p1, p0, LI/n$a;->c:LC/d;

    return-void
.end method

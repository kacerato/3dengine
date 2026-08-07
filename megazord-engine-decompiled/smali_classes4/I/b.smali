.class public LI/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI/b$d;,
        LI/b$a;,
        LI/b$c;,
        LI/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LI/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:LI/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LI/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/b;->a:LI/b$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILB/h;)LI/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, LI/b;->c([BIILB/h;)LI/n$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    invoke-virtual {p0, p1}, LI/b;->d([B)Z

    move-result p1

    return p1
.end method

.method public c([BIILB/h;)LI/n$a;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LB/h;",
            ")",
            "LI/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, LI/n$a;

    new-instance p3, LW/e;

    invoke-direct {p3, p1}, LW/e;-><init>(Ljava/lang/Object;)V

    new-instance p4, LI/b$c;

    iget-object v0, p0, LI/b;->a:LI/b$b;

    invoke-direct {p4, p1, v0}, LI/b$c;-><init>([BLI/b$b;)V

    invoke-direct {p2, p3, p4}, LI/n$a;-><init>(LB/e;LC/d;)V

    return-object p2
.end method

.method public d([B)Z
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

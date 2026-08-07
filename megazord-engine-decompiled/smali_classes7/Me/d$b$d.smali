.class public LMe/d$b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMe/d$b;->h(LIe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/m$c<",
        "Lii/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LMe/d$b;


# direct methods
.method public constructor <init>(LMe/d$b;)V
    .locals 0

    iput-object p1, p0, LMe/d$b$d;->a:LMe/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LIe/m;Lpi/v;)V
    .locals 0
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpi/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lii/b;

    invoke-virtual {p0, p1, p2}, LMe/d$b$d;->b(LIe/m;Lii/b;)V

    return-void
.end method

.method public b(LIe/m;Lii/b;)V
    .locals 0
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lii/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    iget-object p1, p0, LMe/d$b$d;->a:LMe/d$b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, LMe/d$b;->f(LMe/d$b;I)I

    return-void
.end method

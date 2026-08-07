.class public LMe/d$b$e;
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
        "Lii/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LMe/d$b;


# direct methods
.method public constructor <init>(LMe/d$b;)V
    .locals 0

    iput-object p1, p0, LMe/d$b$e;->a:LMe/d$b;

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

    check-cast p2, Lii/a;

    invoke-virtual {p0, p1, p2}, LMe/d$b$e;->b(LIe/m;Lii/a;)V

    return-void
.end method

.method public b(LIe/m;Lii/a;)V
    .locals 2
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lii/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, LIe/m;->F(Lpi/v;)V

    invoke-interface {p1}, LIe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, LIe/m;->f(Lpi/v;)V

    new-instance v1, LMe/g;

    invoke-direct {v1}, LMe/g;-><init>()V

    invoke-interface {p1, v0, v1}, LIe/m;->c(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, LIe/m;->y(Lpi/v;)V

    return-void
.end method

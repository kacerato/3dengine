.class public LMe/d$b$c;
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
        "Lii/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LMe/d$b;


# direct methods
.method public constructor <init>(LMe/d$b;)V
    .locals 0

    iput-object p1, p0, LMe/d$b$c;->a:LMe/d$b;

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

    check-cast p2, Lii/e;

    invoke-virtual {p0, p1, p2}, LMe/d$b$c;->b(LIe/m;Lii/e;)V

    return-void
.end method

.method public b(LIe/m;Lii/e;)V
    .locals 1
    .param p1    # LIe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lii/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LMe/d$b$c;->a:LMe/d$b;

    invoke-static {v0, p1, p2}, LMe/d$b;->e(LMe/d$b;LIe/m;Lpi/v;)V

    return-void
.end method

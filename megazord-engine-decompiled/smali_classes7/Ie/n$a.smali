.class public LIe/n$a;
.super LIe/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIe/n;->b(LIe/m$b;LIe/g;)LIe/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LIe/m$b;

.field public final synthetic b:LIe/g;


# direct methods
.method public constructor <init>(LIe/m$b;LIe/g;)V
    .locals 0

    iput-object p1, p0, LIe/n$a;->a:LIe/m$b;

    iput-object p2, p0, LIe/n$a;->b:LIe/g;

    invoke-direct {p0}, LIe/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIe/m;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/n$a;->a:LIe/m$b;

    iget-object v1, p0, LIe/n$a;->b:LIe/g;

    new-instance v2, LIe/w;

    invoke-direct {v2}, LIe/w;-><init>()V

    invoke-interface {v0, v1, v2}, LIe/m$b;->b(LIe/g;LIe/v;)LIe/m;

    move-result-object v0

    return-object v0
.end method

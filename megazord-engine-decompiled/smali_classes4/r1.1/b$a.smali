.class public final Lr1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lr1/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Lr1/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lr1/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lr1/b;

    iget-object v1, p0, Lr1/b$a;->a:Lr1/y;

    const/4 v2, 0x0

    iget-object v3, p0, Lr1/b$a;->b:Lr1/c;

    invoke-direct {v0, v1, v2, v3, v2}, Lr1/b;-><init>(Lr1/y;Lr1/b0;Lr1/c;Lr1/d0;)V

    return-object v0
.end method

.method public b(Lr1/c;)Lr1/b$a;
    .locals 0
    .param p1    # Lr1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lr1/b$a;->b:Lr1/c;

    return-object p0
.end method

.method public c(Lr1/y;)Lr1/b$a;
    .locals 0
    .param p1    # Lr1/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lr1/b$a;->a:Lr1/y;

    return-object p0
.end method

.class public final LI/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LI/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LI/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI/e$c$a;

    invoke-direct {v0, p0}, LI/e$c$a;-><init>(LI/e$c;)V

    iput-object v0, p0, LI/e$c;->a:LI/e$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(LI/r;)LI/n;
    .locals 1
    .param p1    # LI/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/r;",
            ")",
            "LI/n<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, LI/e;

    iget-object v0, p0, LI/e$c;->a:LI/e$a;

    invoke-direct {p1, v0}, LI/e;-><init>(LI/e$a;)V

    return-object p1
.end method

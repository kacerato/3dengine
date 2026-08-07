.class public LJ/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJ/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LI/n<",
        "LI/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:LB/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:LI/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/m<",
            "LI/g;",
            "LI/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, LB/g;->g(Ljava/lang/String;Ljava/lang/Object;)LB/g;

    move-result-object v0

    sput-object v0, LJ/b;->b:LB/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LJ/b;-><init>(LI/m;)V

    return-void
.end method

.method public constructor <init>(LI/m;)V
    .locals 0
    .param p1    # LI/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/m<",
            "LI/g;",
            "LI/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LJ/b;->a:LI/m;

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

    check-cast p1, LI/g;

    invoke-virtual {p0, p1, p2, p3, p4}, LJ/b;->c(LI/g;IILB/h;)LI/n$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, LI/g;

    invoke-virtual {p0, p1}, LJ/b;->d(LI/g;)Z

    move-result p1

    return p1
.end method

.method public c(LI/g;IILB/h;)LI/n$a;
    .locals 0
    .param p1    # LI/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/g;",
            "II",
            "LB/h;",
            ")",
            "LI/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, LJ/b;->a:LI/m;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, LI/m;->b(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LI/g;

    if-nez p2, :cond_0

    iget-object p2, p0, LJ/b;->a:LI/m;

    invoke-virtual {p2, p1, p3, p3, p1}, LI/m;->c(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    sget-object p2, LJ/b;->b:LB/g;

    invoke-virtual {p4, p2}, LB/h;->a(LB/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, LI/n$a;

    new-instance p4, LC/j;

    invoke-direct {p4, p1, p2}, LC/j;-><init>(LI/g;I)V

    invoke-direct {p3, p1, p4}, LI/n$a;-><init>(LB/e;LC/d;)V

    return-object p3
.end method

.method public d(LI/g;)Z
    .locals 0
    .param p1    # LI/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

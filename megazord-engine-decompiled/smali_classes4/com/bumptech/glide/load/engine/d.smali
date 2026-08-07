.class public Lcom/bumptech/glide/load/engine/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LF/a$b;"
    }
.end annotation


# instance fields
.field public final a:LB/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:LB/h;


# direct methods
.method public constructor <init>(LB/d;Ljava/lang/Object;LB/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/d<",
            "TDataType;>;TDataType;",
            "LB/h;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/d;->a:LB/d;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/d;->c:LB/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/d;->a:LB/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/d;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/d;->c:LB/h;

    invoke-interface {v0, v1, p1, v2}, LB/d;->a(Ljava/lang/Object;Ljava/io/File;LB/h;)Z

    move-result p1

    return p1
.end method

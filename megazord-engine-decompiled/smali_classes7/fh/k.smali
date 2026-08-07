.class public interface abstract Lfh/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfh/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfh/k$a;

    invoke-direct {v0}, Lfh/k$a;-><init>()V

    sput-object v0, Lfh/k;->a:Lfh/k;

    return-void
.end method


# virtual methods
.method public abstract a(ILfh/a;)V
.end method

.method public abstract b(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lfh/b;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract c(ILlh/e;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lfh/b;",
            ">;Z)Z"
        }
    .end annotation
.end method

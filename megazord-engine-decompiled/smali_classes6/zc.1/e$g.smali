.class public Lzc/e$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Lzc/a;

.field public b:Lzc/b;


# direct methods
.method public constructor <init>(Lzc/a;Lzc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "condition",
            "indexer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc/e$g;->a:Lzc/a;

    iput-object p2, p0, Lzc/e$g;->b:Lzc/b;

    return-void
.end method
